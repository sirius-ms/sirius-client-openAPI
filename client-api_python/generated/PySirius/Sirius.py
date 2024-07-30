# THIS FILE IS NOT AUTO GENERATED AND MIGHT NEED TO BE CHANGED WHEN API ENDPOINTS CHANGE

import os
import time
import glob
import signal
import shutil
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
    run_command = None

    def reset_sdk_class(self):
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

    def reset_sdk_process(self):
        SiriusSDK.process = None

    def reconnect(self):
        if None not in (SiriusSDK.api_client, SiriusSDK.process) and SiriusSDK.process.poll() is None:
            return PySirius.PySiriusAPI(api_client=SiriusSDK.api_client)
        print("Can not reconnect, api_client and/or process are None or process has terminated.")
        return None

    def restart_service_only(self):
        if None not in (SiriusSDK.run_command, SiriusSDK.process, SiriusSDK.api_client):
            if isinstance(SiriusSDK.shutdown(self), bool):
                print("Shutdown seems to have gone wrong, aborting restart...")
                return None

            SiriusSDK.process = subprocess.Popen(SiriusSDK.run_command)
            for _ in range(60):
                time.sleep(1)
                try:
                    if SiriusSDK.process.poll() is None:
                        found = self.__cycle_find_sirius_pid_and_port__()
                        if not found:
                            print(
                                "Could not find sirius port file. Please terminate SIRIUS if needed and try specifying a port")
                            print(
                                "Alternatively, try attaching to a running SIRIUS instance with attach_to_running_sirius()")
                            return None
                        SiriusSDK.host = f'http://localhost:{SiriusSDK.port}'
                        SiriusSDK.configuration = PySirius.Configuration(SiriusSDK.host)
                        SiriusSDK.api_client = PySirius.ApiClient(SiriusSDK.configuration)
                        if PySirius.ActuatorApi(SiriusSDK.api_client).health().get('status') == 'UP':
                            SiriusSDK.process_id = SiriusSDK.process.pid
                            return None
                    else:
                        print("The SIRIUS process seems to have exited during startup. Please investigate this error.")
                        print(f"Exit code provided by the process: {SiriusSDK.process.poll()}")
                        SiriusSDK.reset_sdk_class(self)
                except Exception as e:
                    print(str(e))

            print("SIRIUS seems to have problems starting. Resetting SiriusSDK...")
            SiriusSDK.reset_sdk_class(self)
            return None
        print("Could not attempt REST restart, run_command, process or api_client are None.")
        return None

    def __find_sirius_pid_and_port__(self, sirius_version = None):
        global_workspace = os.path.expanduser("~/.sirius")
        port_pattern = os.path.join(global_workspace, "sirius-" + (sirius_version or "[0-9]*") + ".port")
        port_files = glob.glob(port_pattern)
        if not port_files:
            return False
        if len(port_files) > 1:
            print("Following sirius port files detected:")
            for f in port_files:
                print(f)
        port_file = sorted(port_files)[-1]
        pid_file = port_file.replace(".port", ".pid")
        with open(port_file, "r", encoding="utf8") as file:
            port = int(file.read())
        with open(pid_file, "r", encoding="utf8") as file:
            pid = int(file.read())
        SiriusSDK.port = port
        SiriusSDK.process_id = pid
        print("Using port", port, "from file", port_file)
        return True

    def __cycle_find_sirius_pid_and_port__(self):
        found = False
        for _ in range(10):
            time.sleep(1)
            found = self.__find_sirius_pid_and_port__()
            if found:
                break
        return found

    @classmethod
    def __are_all_vars_none__(cls):
        return all(
            value is None for key, value in vars(cls).items() if not key.startswith('__') and not callable(value))

    def attach_to_running_sirius(self, sirius_major_version=None, sirius_port=None):
        """Attaches to a running local sirius either by specifying a port or major version, e.g. '6'"""
        if not self.__are_all_vars_none__():
            print("Some attributes of SiriusSDK are not None."
                  "If you are sure that no other SIRIUS instance is running and you do not need the current"
                  "attributes of SiriusSDK, you can use reset_sdk_class() before calling this function again.")
            return None
        
        if sirius_port is not None:
            SiriusSDK.port = sirius_port
        else:
            found = self.__find_sirius_pid_and_port__(str(sirius_major_version))
            if not found:
                print("No port file matching ~/.sirius/sirius-X.X.port was found.")
                print("Please try providing the port.")
                return None

        SiriusSDK.host = f'http://localhost:{SiriusSDK.port}'
        SiriusSDK.configuration = PySirius.Configuration(SiriusSDK.host)
        SiriusSDK.api_client = PySirius.ApiClient(SiriusSDK.configuration)
        return PySirius.PySiriusAPI(api_client=SiriusSDK.api_client)

    def start(self, sirius_path=None, port=None, projectspace=None, workspace=None, forceStart=False):
        """starts the Sirius rest service and returns an API instance that allows access to the API endpoints"""

        # Fail if started already
        if (SiriusSDK.process is not None) and not forceStart:
            print(f"\033[93m Sirius seems to have already been started with PID: {str(SiriusSDK.process.pid)}.")
            print("\033[93m Use reconnect() to get a new API instance for your current SIRIUS.")
            print("\033[93m Use shutdown() and then start() to restart SIRIUS and get a new API instance.")
            print(
                "\033[93m If you are sure the process is not running anymore, use reset_sdk_process() or reset the complete SDK using reset_sdk_class() before calling start() again.")
            print(
                "\033[93m [NOT RECOMMENDED] Use start with forceStart=True to skip this warning and start a second service. \033[0m")
            return None

        SiriusSDK.workspace = workspace

        # check for SIRIUS executable
        if sirius_path is not None:
            if not os.path.exists(sirius_path):
                print("Wrong path to executable.")
                SiriusSDK.reset_sdk_class(self)
                return None
            SiriusSDK.sirius_path = os.path.abspath(sirius_path)
        elif os.getenv('SIRIUS_EXE') is not None:
            SiriusSDK.sirius_path = os.path.abspath(os.getenv('SIRIUS_EXE'))
        else:
            if not shutil.which("sirius"):
                print("Please provide a path to the sirius executable if not declared in PATH!")
                SiriusSDK.reset_sdk_class(self)
                return None
            print("Found SIRIUS in PATH! Using this information to start the application.")
            SiriusSDK.sirius_path = 'sirius'

        # check for projectspace
        if projectspace is not None:
            if not os.path.exists(projectspace):
                print("Wrong path to project space.")
                SiriusSDK.reset_sdk_class(self)
                return None
            SiriusSDK.projectspace = os.path.abspath(projectspace)
            run_command = [SiriusSDK.sirius_path, "--output", SiriusSDK.projectspace, "REST", "-s"]
        else:
            run_command = [SiriusSDK.sirius_path, "REST", "-s"]

        # check for optional workspace parameter
        if workspace is not None:
            if not os.path.exists(workspace):
                print("Wrong path to workspace")
                SiriusSDK.reset_sdk_class(self)
                return None
            print("\033[93m [WARNING] Overwriting workspace location [NOT RECOMMENDED] \033[0m")
            SiriusSDK.workspace = os.path.abspath(workspace)
            run_command.insert(3, "--workspace")
            run_command.insert(4, workspace)

        # check for port
        if port is not None:
            SiriusSDK.port = port
            SiriusSDK.host = f'http://localhost:{SiriusSDK.port}'
            SiriusSDK.configuration = PySirius.Configuration(SiriusSDK.host)
            SiriusSDK.api_client = PySirius.ApiClient(SiriusSDK.configuration)
            run_command.extend(["-p", str(port)])

        SiriusSDK.run_command = run_command
        # run Command
        SiriusSDK.process = subprocess.Popen(SiriusSDK.run_command, stdin=None, stdout=None)
        SiriusSDK.process_id = SiriusSDK.process.pid

        # try to get port from sirius.port file
        if port is None:
            print("SIRIUS was started without specifying --port (-p), trying to find the sirius port file.")
            found = self.__cycle_find_sirius_pid_and_port__()
            if not found:
                print("Could not find sirius port file. Please terminate SIRIUS if needed and try specifying a port")
                print("Alternatively, try attaching to a running SIRIUS instance with attach_to_running_sirius()")
                return None

        # found == True
        SiriusSDK.host = f'http://localhost:{SiriusSDK.port}'
        SiriusSDK.configuration = PySirius.Configuration(SiriusSDK.host)
        SiriusSDK.api_client = PySirius.ApiClient(SiriusSDK.configuration)

        # test if start was successful
        for _ in range(30):
            time.sleep(1)
            try:
                if SiriusSDK.process.poll() is None:
                    if PySirius.ActuatorApi(SiriusSDK.api_client).health().get('status') == 'UP':
                        return PySirius.PySiriusAPI(api_client=SiriusSDK.api_client)
                else:
                    print("The SIRIUS process seems to have exited during startup. Please investigate this error.")
                    print(f"Exit code provided by the process: {SiriusSDK.process.poll()}")
                    SiriusSDK.reset_sdk_class(self)
            except Exception as e:
                print(str(e))

        print("SIRIUS seems to have problems starting. Resetting SiriusSDK...")
        SiriusSDK.reset_sdk_class(self)
        return None

    def shutdown(self):
        """shuts down the via the start function started sirius rest application, returns the exit code of the shutdown order"""
        if SiriusSDK.process is not None:
            # Terminate via Rest Call
            try:
                PySirius.ActuatorApi(SiriusSDK.api_client).shutdown()
                time.sleep(3)
                if SiriusSDK.process.poll() is not None:
                    print("Sirius was shut down succesfully")
                    SiriusSDK.process = None
                    SiriusSDK.process_id = None
                    return
            except Exception as e:
                print("An Exception occured while trying to gracefully shutdown SIRIUS!")
                print(str(e))

            # Terminate via SIGTERM
            SiriusSDK.process.terminate()
            time.sleep(3)
            if SiriusSDK.process.poll() is not None:
                print("Sirius process has been terminated.")
                SiriusSDK.process = None
                SiriusSDK.process_id = None
                return

            # Terminate via SIGKILL
            SiriusSDK.process.kill()
            time.sleep(3)
            if SiriusSDK.process.poll() is not None:
                print("Sirius process has been killed.")
                SiriusSDK.process = None
                SiriusSDK.process_id = None
                return

            # Termination not successful!
            print("Unable to stop Sirius! - Please manually terminate the process with PID " + str(SiriusSDK.process.pid))
            print("After terminating the process, use start() to start a new instance of SIRIUS.")
            return False

        elif SiriusSDK.process_id is not None:
            os.kill(SiriusSDK.process_id, signal.SIGTERM)
            time.sleep(3)
            try:
                os.kill(SiriusSDK.process_id, 0)
            except OSError:
                print("Sirius process has been terminated.")
                SiriusSDK.process = None
                SiriusSDK.process_id = None
                return

            os.kill(SiriusSDK.process_id, signal.SIGKILL)
            time.sleep(3)
            try:
                os.kill(SiriusSDK.process_id, 0)
            except OSError:
                print("Sirius process has been killed.")
                SiriusSDK.process = None
                SiriusSDK.process_id = None
                return

            # Termination not successful!
            print("Unable to stop Sirius! - Please manually terminate the process with PID " + str(SiriusSDK.process_id))
            print("After terminating the process, use start() to start a new instance of SIRIUS.")
            return False

        else:
            print("There does not seem to be any process or process_id to shut down...")
            return False

    @classmethod
    def connect_remote(cls, address):
        """Connect to a remote (or local) running sirius by providing the address, e.g. 'http://localhost:8080'."""
        config = PySirius.Configuration(address)
        api_client = PySirius.ApiClient(config)
        return PySirius.PySiriusAPI(api_client=api_client)
