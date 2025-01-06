# THIS FILE IS NOT AUTO GENERATED AND MIGHT NEED TO BE CHANGED WHEN API ENDPOINTS CHANGE

import os
import sys
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
        SiriusSDK.process_id = None

    def restart_sirius(self):
        if None not in (SiriusSDK.run_command, SiriusSDK.process, SiriusSDK.api_client):
            if isinstance(SiriusSDK.shutdown_sirius(self), bool):
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
                        # connect() sets self$host and self$api_client
                        host = f'http://localhost:{SiriusSDK.port}'
                        sirius_api = self.connect(host)
                        return sirius_api
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

    def __get_pid_and_port_file__(self, sirius_version=None):
        global_workspace = os.path.expanduser("~/.sirius")

        if not sirius_version or sirius_version == "None":
            port_pattern_match = "[0-9]*"
        else:
            port_pattern_match = sirius_version
        port_pattern = os.path.join(global_workspace, "sirius-"
                                    + port_pattern_match
                                    + ".port")
        port_files = glob.glob(port_pattern)
        if not port_files:
            return False
        if len(port_files) > 1:
            print("Following sirius port files detected:")
            for f in port_files:
                print(f)
        port_file = sorted(port_files)[-1]
        pid_file = port_file.replace(".port", ".pid")
        return pid_file, port_file

    def __find_sirius_pid_and_port__(self, sirius_version=None):
        result = self.__get_pid_and_port_file__(sirius_version)
        if result is False:
            return False
        pid_file, port_file = result
        with open(pid_file, "r", encoding="utf8") as file:
            pid = int(file.read())
        with open(port_file, "r", encoding="utf8") as file:
            port = int(file.read())
        SiriusSDK.port = port
        SiriusSDK.process_id = pid
        print("Using port", port, "from file", port_file)
        print("Using PID", pid, "from file", pid_file)
        return True

    def __delete_sirius_pid_and_port__(self, sirius_version=None):
        result = self.__get_pid_and_port_file__(sirius_version)
        if result is False:
            return False
        pid_file, port_file = result
        os.remove(pid_file)
        os.remove(port_file)
        return True

    def __cycle_find_sirius_pid_and_port__(self):
        found = False
        for _ in range(60):
            time.sleep(1)
            found = self.__find_sirius_pid_and_port__()
            if found:
                break
        return found

    @classmethod
    def __are_all_vars_none__(cls):
        return (cls.port is None
                and cls.host is None
                and cls.configuration is None
                and cls.sirius_path is None
                and cls.projectspace is None
                and cls.workspace is None
                and cls.process is None
                and cls.process_id is None
                and cls.api_client is None
                and cls.run_command is None)

    def attach_or_start_sirius(self, headless=None):
        """Attaches to a running local sirius if available or starts a new SIRIUS instance if not."""
        api = self.attach_to_sirius()
        # attachment encountered issue
        if api is False:
            return None
        # attachment did not encounter issue but also found no SIRIUS
        elif api is None:
            api = self.start_sirius(headless=headless)
        # attachment successful
        else:
            print("Attached to running SIRIUS instance.")
        return api

    def attach_to_sirius(self, sirius_major_version=None, sirius_port=None):
        """Attaches to a running local sirius either by specifying a port or major version, e.g. '6'"""

        # check if connection to API client is possible
        if SiriusSDK.api_client is not None:
            try:
                if PySirius.ActuatorApi(SiriusSDK.api_client).health().get('status') == 'UP':
                    return PySirius.PySiriusAPI(api_client=SiriusSDK.api_client)
            except Exception as e:
                print("Found existing API Client, but could not reach API.")

        # create and check API client from existing port
        if SiriusSDK.port is not None:
            SiriusSDK.host = f'http://localhost:{SiriusSDK.port}'
            sirius_api = SiriusSDK.connect(SiriusSDK.host)
            SiriusSDK.api_client = sirius_api.api_client
            try:
                if PySirius.ActuatorApi(SiriusSDK.api_client).health().get('status') == 'UP':
                    return PySirius.PySiriusAPI(api_client=SiriusSDK.api_client)
            except Exception as e:
                print("Found existing port, but could not reach API under this port.")

        # if client is not reachable, search for process and kill if necessary
        if SiriusSDK.process is not None:
            if SiriusSDK.process.poll() is None:
                print("The SIRIUS process still seems to be lingering, but no connection could be made to the API.")
                print("Shutting down the process...")
                shutdown_success = SiriusSDK.shutdown_sirius(self)
                if shutdown_success is False:
                    # before error messages will be done by shutdown function
                    print("Aborting....")
                    return False
                print("Process shut down successfully.")
            else:
                print("Known process seems to have terminated at some time.")

        SiriusSDK.reset_sdk_class(self)
        print("SiriusSDK has been reset. Continuing with search for new SIRIUS instance...")

        if sirius_port is not None:
            SiriusSDK.port = sirius_port
        else:
            found = self.__find_sirius_pid_and_port__(sirius_major_version)
            if not found:
                print("No port file matching ~/.sirius/sirius-X.X.port was found.")
                print("Please try providing the port.")
                return None

        SiriusSDK.host = f'http://localhost:{SiriusSDK.port}'
        sirius_api = SiriusSDK.connect(SiriusSDK.host)
        SiriusSDK.api_client = sirius_api.api_client

        try:
            if PySirius.ActuatorApi(SiriusSDK.api_client).health().get('status') == 'UP':
                return PySirius.PySiriusAPI(api_client=SiriusSDK.api_client)
        except Exception as e:
            print("Created API client from process_id and port, but could not reach API.")

        print("Files for SIRIUS process_id and port have been found, but do not belong to an alive API.")
        print("Process_id and port files will be deleted and start_sirius will be called.")
        self.__delete_sirius_pid_and_port__(sirius_major_version)
        SiriusSDK.reset_sdk_class(self)

        return None

    def start_sirius(self, sirius_path=None, port=None, projectspace=None, workspace=None, force_start=False, headless=None):
        """starts the Sirius rest service and returns an API instance that allows access to the API endpoints"""

        # Fail if started already
        if (SiriusSDK.process is not None) and not force_start:
            print(f"\033[93m Sirius seems to have already been started with PID: {str(SiriusSDK.process.pid)}.")
            print("\033[93m Use reconnect() to get a new API instance for your current SIRIUS.")
            print("\033[93m Use shutdown() and then start() to restart SIRIUS and get a new API instance.")
            print("\033[93m If you are sure the process is not running anymore, use reset_sdk_process() or reset the complete SDK using reset_sdk_class() before calling start() again.")
            print("\033[93m [NOT RECOMMENDED] Use start with forceStart=True to skip this warning and start a second service. \033[0m")
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
            run_command.extend(["-p", str(port)])

        if headless is True:
            run_command.extend(["--headless"])
        elif headless is False:
            run_command.extend(["--no-headless"])

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
        sirius_api = self.connect(SiriusSDK.host)
        SiriusSDK.api_client = sirius_api.get_client()

        # test if start was successful
        for _ in range(30):
            time.sleep(1)
            try:
                if SiriusSDK.process.poll() is None:
                    if PySirius.ActuatorApi(SiriusSDK.api_client).health().get('status') == 'UP':
                        return sirius_api
                else:
                    print("The SIRIUS process seems to have exited during startup. Please investigate this error.")
                    print(f"Exit code provided by the process: {SiriusSDK.process.poll()}")
                    SiriusSDK.reset_sdk_class(self)
            except Exception as e:
                print(str(e))

        print("SIRIUS seems to have problems starting. Resetting SiriusSDK...")
        SiriusSDK.reset_sdk_class(self)
        return None

    def shutdown_sirius(self):
        """shuts down the via the start function started sirius rest application, returns the exit code of the shutdown order"""
        if SiriusSDK.process is not None:
            # Terminate via Rest Call
            try:
                PySirius.ActuatorApi(SiriusSDK.api_client).shutdown()
                time.sleep(3)
                if SiriusSDK.process.poll() is not None:
                    print("Sirius was shut down succesfully")
                    SiriusSDK.reset_sdk_process(self)
                    return
            except Exception as e:
                print("An Exception occured while trying to gracefully shutdown SIRIUS!")
                print(str(e))

            # Terminate via SIGTERM
            SiriusSDK.process.terminate()
            time.sleep(3)
            if SiriusSDK.process.poll() is not None:
                print("Sirius process has been terminated.")
                SiriusSDK.reset_sdk_process(self)
                return

            # Terminate via SIGKILL
            SiriusSDK.process.kill()
            time.sleep(3)
            if SiriusSDK.process.poll() is not None:
                print("Sirius process has been killed.")
                SiriusSDK.reset_sdk_process(self)
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
                SiriusSDK.reset_sdk_process(self)
                return

            os.kill(SiriusSDK.process_id, signal.SIGKILL)
            time.sleep(3)
            try:
                os.kill(SiriusSDK.process_id, 0)
            except OSError:
                print("Sirius process has been killed.")
                SiriusSDK.reset_sdk_process(self)
                return

            # Termination not successful!
            print("Unable to stop Sirius! - Please manually terminate the process with PID " + str(SiriusSDK.process_id))
            print("After terminating the process, use start() to start a new instance of SIRIUS.")
            return False

        else:
            print("There does not seem to be any process or process_id to shut down...")
            return False

    def reconnect(self):
        if None not in (SiriusSDK.api_client, SiriusSDK.process) and SiriusSDK.process.poll() is None:
            return PySirius.PySiriusAPI(api_client=SiriusSDK.api_client)
        print("Can not reconnect, api_client and/or process are None or process has terminated.")
        return None

    @classmethod
    def connect(cls, url):
        """Connect to a remote (or local) running sirius by providing the address, e.g. 'http://localhost:8080'."""
        SiriusSDK.config = PySirius.Configuration(url)
        SiriusSDK.api_client = PySirius.ApiClient(SiriusSDK.config)
        return PySirius.PySiriusAPI(api_client=SiriusSDK.api_client)
