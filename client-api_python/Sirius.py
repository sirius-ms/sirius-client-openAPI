#THIS FILE IS NOT AUTO GENERATED AND MIGHT NEED TO BE CHANGED WHEN API ENDPOINTS CHANGE

import os
import time
import subprocess
import PySirius

class SiriusSDK:
    """entry point for running the Sirius Rest service from a new instance"""
    
    port = None
    host = None
    configuration = None
    sirius_path = None
    projectspace = None
    workspace = None
    process = None
    process_id = None
    api_client = None


    def reset(self):
        SiriusSDK.port = None
        SiriusSDK.host = None
        SiriusSDK.configuration = None
        SiriusSDK.sirius_path = None
        SiriusSDK.projectspace = None
        SiriusSDK.workspace = None
        SiriusSDK.process = None
        SiriusSDK.process_id = None
        SiriusSDK.api_client = None
        SiriusSDK.run_command = None


    def reconnect(self):
        if None not in (SiriusSDK.api_client, SiriusSDK.process) and SiriusSDK.process.poll() is None:
            return PySirius.PySiriusAPI(api_client=SiriusSDK.api_client)
        print("Can not reconnect, api_client and/or process are None or process has terminated.")
        return None


    def restart_service_only(self):
        if None not in (SiriusSDK.run_command, SiriusSDK.process, SiriusSDK.api_client):
            if SiriusSDK.shutdown(self) == 1:
                print("Shutdown seems to have gone wrong, aborting restart...")
                return None
            
            SiriusSDK.process = subprocess.Popen(SiriusSDK.run_command)
            for _ in range(60):
                time.sleep(1)
                try:
                    if SiriusSDK.process.poll() is None:
                        if PySirius.ActuatorApi(SiriusSDK.api_client).health().get('status') == 'UP':
                            SiriusSDK.process_id = SiriusSDK.process.pid
                            return None
                    else: 
                        print("The SIRIUS process seems to have exited during startup. Please investigate this error.")
                        print(f"Exit code provided by the process: {SiriusSDK.process.poll()}")
                        SiriusSDK.reset()
                except Exception as e:
                    pass

            print("SIRIUS seems to have problems starting. Resetting SiriusSDK...")
            SiriusSDK.reset()
            return None
        print("Could not attempt REST restart, run_command, process or api_client are None.")
        return None

            
    def start(self, sirius_path=None, port=8080, projectspace=None, workspace=None, forceStart=False):
        """starts the Sirius rest service and returns an API instance that allows access to the API endpoints"""

        # Fail if started already
        if (SiriusSDK.process is not None) and not forceStart:
            print("Sirius seems to have already been started with PID: " + str(SiriusSDK.process.pid))
            print("Use reconnect() to get a new API instance or shutdown() and start() to restart SIRIUS.")
            print("If you are sure the process is not running anymore, reset as SiriusSDK.process=None or reset the complete SDK using SiriusSDK.reset().")
            print("[NOT RECOMMENDED] Use start with forceStart=True to skip this warning and start a second service.")
            return None
        
        SiriusSDK.port = port
        SiriusSDK.host = f'http://localhost:{SiriusSDK.port}'
        SiriusSDK.configuration = PySirius.Configuration(SiriusSDK.host)
        SiriusSDK.workspace = workspace
        SiriusSDK.api_client = PySirius.ApiClient(SiriusSDK.configuration)
        
        # check for SIRIUS executable
        print(sirius_path)
        print(port)
        print(SiriusSDK.host)
        if sirius_path is not None:
            if not os.path.exists(sirius_path):
                print("Wrong path to executable.")
                SiriusSDK.reset()
                return None
            SiriusSDK.sirius_path = os.path.abspath(sirius_path)
        else:
            if os.getenv("PATH").find("sirius") == -1:
                print("Please provide a path to the sirius executable if not declared in PATH!")
                SiriusSDK.reset()
                return None
            print("Found SIRIUS in PATH! Using this information to start the application.")
            SiriusSDK.sirius_path = 'sirius'

        # check for projectspace
        if projectspace is not None:
            if not os.path.exists(projectspace):
                print("Wrong path to project space.")
                SiriusSDK.reset()
                return None
            SiriusSDK.projectspace = os.path.abspath(projectspace)
            run_command = [SiriusSDK.sirius_path, "--output", SiriusSDK.projectspace, "REST", "-p", str(port), "-s"]
        run_command = [SiriusSDK.sirius_path, "REST", "-p", str(port), "-s"]
            
        # check for optional workspace parameter
        if workspace is not None:
            if not os.path.exists(workspace):
                print("Wrong path to workspace")
                SiriusSDK.reset()
                return None
            print("\033[93m [WARNING] Overwriting workspace location [NOT RECOMMENDED] \033[0m")
            SiriusSDK.workspace = os.path.abspath(workspace)
            run_command.insert(3, "--workspace")
            run_command.insert(4, workspace)
        SiriusSDK.run_command = run_command

        # run Command
        SiriusSDK.process = subprocess.Popen(SiriusSDK.run_command, stdin=None, stdout=None)

        # test if start was successfull
        for _ in range(60):
            time.sleep(1)
            try:
                if SiriusSDK.process.poll() is None:
                    if PySirius.ActuatorApi(SiriusSDK.api_client).health().get('status') == 'UP':
                        SiriusSDK.process_id = SiriusSDK.process.pid
                        return PySirius.PySiriusAPI(api_client=SiriusSDK.api_client)
                else: 
                    print("The SIRIUS process seems to have exited during startup. Please investigate this error.")
                    print(f"Exit code provided by the process: {SiriusSDK.process.poll()}")
                    SiriusSDK.reset()
            except Exception as e:
                print(str(e))

        print("SIRIUS seems to have problems starting. Resetting SiriusSDK...")
        SiriusSDK.reset()
        return None


    def shutdown(self):
        """shuts down the via the start function started sirius rest application, returns the exit code of the shutdown order"""
        # terminated via Rest Call
        try:
            PySirius.ActuatorApi(SiriusSDK.api_client).shutdown()
        except Exception as e:
            print("An Exception occured while trying to gracefully shutdown SIRIUS!")
            print(str(e))
        time.sleep(3)
        if SiriusSDK.process.poll() is not None:
            print("Sirius was shut down succesfully")
            SiriusSDK.process = None
            SiriusSDK.process_id = None
            return 0
        
        # Terminate via SIGTERM
        SiriusSDK.process.terminate()
        time.sleep(3)
        if SiriusSDK.process.poll() is not None:
            print("Sirius process has been terminated.")
            SiriusSDK.process = None
            SiriusSDK.process_id = None
            return 0
        
        # Terminate via SIGKILL
        SiriusSDK.process.kill()
        time.sleep(3)
        if SiriusSDK.process.poll() is not None:
            print("Sirius process has been killed.")
            SiriusSDK.process = None
            SiriusSDK.process_id = None
            return 0
        
        # Termination not successful!
        print("Unable to stop Sirius! - Please manually terminate the process with PID "+ str(SiriusSDK.process.pid))
        print("After terminating the process, use start() to start a new instance of SIRIUS.")
        return 1
