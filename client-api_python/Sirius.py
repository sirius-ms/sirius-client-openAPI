import os
import time
import subprocess
import asyncio
import json

import urllib3
import PySirius

class RealSirius:
    
    process = None
    port = None
    
    def start(project_space, sirius_executable, port=8080):
        is_up = False
        http = urllib3.PoolManager()

        if RealSirius.process is not None:
            print("Sirius has already been started with PID: "+str(RealSirius.process.pid))
        
        RealSirius.port = port
        
        # add windows and mac
        executable_exist = os.path.exists(sirius_executable)
        project_space_exist = os.path.exists(project_space)

        if executable_exist and project_space_exist:
            # run_command = "java -jar " + sirius_executable + " --output " + project_space + " REST  -p " + port + " -s" + "> log.txt 2>&1"
            run_command = run_command = [sirius_executable, "--output", project_space, "REST", "-p", str(port), "-s", ">", "log.txt", "2>&1"]
            RealSirius.process = subprocess.Popen(run_command)

            while not is_up:
                time.sleep(0.5)
                try:
                    resp = http.request('GET', "http://localhost:" + str(port) + "/actuator/health")
                    if resp.status == 200:
                        resp_data = json.loads(resp.data.decode('utf-8'))
                        is_up = resp_data["status"] == "UP"
                        if is_up:
                            print("Sirius started succesully on the port " + str(port))
                            return PySirius.PySiriusAPI(address="http://localhost", port=RealSirius.port)
                except:
                    pass
        else:
            print("Wrong path to project space or executable")
            return None

    def shutdown():
        if RealSirius.process is None:
            print("Sirius has not been started yet...")
            return
        try:
            loop = asyncio.new_event_loop()
            loop.run_until_complete(__shutdown())
            loop.close()
        except:
            print("Sirius is down")

    async def __shutdown():
        http = urllib3.PoolManager()
        resp = http.request('POST', "http://localhost:" + str(RealSirius.port) + "/actuator/shutdown")
        if resp.status == 200:
            # terminated via Rest Call
            print("Sirius wash shut down succesfully")
            return
        # Terminate via SIGTERM
        RealSirius.process.terminate()
        if RealSirius.process.poll() is not None:
            print("Sirius was shut down forcibly")
            return
        # Terminate via SIGKILL
        RealSirius.process.kill()
        if RealSirius.process.poll() is not None:
            print("Sirius has been shut down...")
            return
        print("Unable to kill process...")
        
