import os
import time
import subprocess
import json
import platform
import urllib3
import PySirius

class SiriusSDK:
    """entry point for running the Sirius Rest service from a new instance"""
    
    process = None
    port = None
    workspace = None
    
    def start(sirius_executable=None, project_space=None, override_workspace_location=None ,port=8080, forceStart=False):
        """starts the Sirius rest service and returns an API instance that allows access to the API endpoints"""
        is_up = False
        workspace = override_workspace_location
        http = urllib3.PoolManager()

        # Fail if started already
        if (SiriusSDK.process is not None) and not forceStart:
            print("Sirius has already been started with PID: "+str(SiriusSDK.process.pid))
            return None
        
        SiriusSDK.port = port
        
        # check for project Space and Sirius Executeable
        project_space_exist = False
        executable_exist = False
        if sirius_executable is not None:
            executable_exist = os.path.exists(sirius_executable)
            if not executable_exist:
                print("Wrong path to executable")
                return None
        if project_space is not None:
            project_space_exist = os.path.exists(project_space)
            if not project_space_exist:
                print("Wrong path to project space")
                return None

        path_to_executable = None
        # Check Path for Sirius Executeable
        if executable_exist:
            path_to_executable = os.path.abspath(sirius_executable)
        else:
            spacing = "/"
            if platform.system() == "Windows":
                spacing = "\\"
            path_to_executable = str(os.getenv('PATH')) + spacing + str(os.getenv('PKG_NAME'))
            if os.getenv('PATH') is None or os.getenv('PKG_NAME') is None:
                print("Please provide a path to the sirius executable if no environment variable is set!")
                return None
            
        # run_command = "java -jar " + sirius_executable + " --output " + project_space + " REST  -p " + port + " -s"
        if project_space is not None:
            path_to_project = os.path.abspath(project_space)
            run_command = [path_to_executable, "--output", path_to_project, "REST", "-p", str(port), "-s"]
        else:
            run_command = [path_to_executable, "REST", "-p", str(port), "-s"]
            
        # optional workspace parameter
        if workspace is not None:
            if not os.path.exists(workspace) and not forceStart:
                print("Wrong path to workspace")
                return None
            print("\033[93m [WARNING] Overriding workspace location [NOT RECOMMENDED] \033[0m")
            run_command.insert(3, "--workspace")
            run_command.insert(4, workspace)
        # run Command
        SiriusSDK.process = subprocess.Popen(run_command)

        # Test if start was successfull
        while not is_up:
            time.sleep(0.5)
            try:
                resp = http.request('GET', "http://localhost:" + str(port) + "/actuator/health")
                if resp.status == 200:
                    resp_data = json.loads(resp.data.decode('utf-8'))
                    is_up = resp_data["status"] == "UP"
                    if is_up:
                        print("Sirius started succesully on the port " + str(port))
                        return PySirius.PySiriusAPI(address="http://localhost", port=SiriusSDK.port)
            except Exception as e:
                print("An Exception occured while interacting with the Api! ["+str(e)+"] ... Proceeding")

    def shutdown():
        """shuts down the via the start function started sirius rest application, returns the exit code of the shutdown order"""
        http = urllib3.PoolManager()
        resp = http.request('POST', "http://localhost:" + str(SiriusSDK.port) + "/actuator/shutdown")
        if resp.status == 200:
            # terminated via Rest Call
            print("Sirius wash shut down succesfully")
            SiriusSDK.process = None
            return 0
        # Terminate via SIGTERM
        SiriusSDK.process.terminate()
        if SiriusSDK.process.poll() is not None:
            print("Sirius was shut down forcibly")
            SiriusSDK.process = None
            return 0
        # Terminate via SIGKILL
        SiriusSDK.process.kill()
        if SiriusSDK.process.poll() is not None:
            print("Sirius has been shut down...")
            SiriusSDK.process = None
            return 0
        # Termination not successful!
        print("Unable to stop Sirius! - Please manually terminate the process with PID "+ str(SiriusSDK.process.pid))
        SiriusSDK.process = None
        return 1