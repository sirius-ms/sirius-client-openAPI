import os
import time
import subprocess
import asyncio
import json

import urllib3
import PySirius

class SiriusSDK:
    
    process = None
    port = None
    
    def start(project_space, sirius_executable, port=8080, forceStart=False):
        is_up = False
        http = urllib3.PoolManager()

        if (SiriusSDK.process is not None) and not forceStart:
            print("Sirius has already been started with PID: "+str(SiriusSDK.process.pid))
            return None
        
        SiriusSDK.port = port
        
        # add windows and mac
        executable_exist = os.path.exists(sirius_executable)
        project_space_exist = os.path.exists(project_space)

        if  (executable_exist and project_space_exist) or forceStart:
            path_to_executable = os.path.abspath(sirius_executable)
            path_to_project = os.path.abspath(project_space)
            # run_command = "java -jar " + sirius_executable + " --output " + project_space + " REST  -p " + port + " -s"
            run_command = [path_to_executable, "--output", path_to_project, "REST", "-p", str(port), "-s"]
            SiriusSDK.process = subprocess.Popen(run_command)

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
                except:
                    pass
        else:
            print("Wrong path to project space or executable")
            return None

    def shutdown():
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