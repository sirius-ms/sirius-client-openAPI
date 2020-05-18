import os
import time
import subprocess
import asyncio
import json

import urllib3

class SiriusAPI:

    def __init__(self, project_space, sirius_executable, port=8080):
        self.port = str(port)
        self.project_space = project_space
        self.sirius_executable = sirius_executable
        self.base_path = "http://localhost:" + self.port

    def start_sirius(self):
        is_up = False
        http = urllib3.PoolManager()

        # run_command = "java -jar " + self.sirius_executable + " --output " + self.project_space + " REST  -p " + self.port + " -s" + "> log.txt 2>&1"
        run_command = self.sirius_executable + " --output " + self.project_space + " REST  -p " + self.port + " -s" + "> log.txt 2>&1"

        subprocess.Popen([run_command], shell=True)

        while not is_up:
            time.sleep(0.5)
            try:
                resp = http.request('GET', self.base_path + "/actuator/health")
                if resp.status == 200:
                    resp_data = json.loads(resp.data.decode('utf-8'))
                    is_up = resp_data["status"] == "UP"
                    if is_up:
                        print("Sirius started succesully on the port " + self.port)
            except:
                pass

    def shutdown(self):
        try:
            loop = asyncio.new_event_loop()
            loop.run_until_complete(self.__shutdown())
            loop.close()
        except:
            print("Sirius is down")

    async def __shutdown(self):
        http = urllib3.PoolManager()
        resp = http.request('POST', self.base_path + "/actuator/shutdown")
        if resp.status == 200:
            print("Sirius wash shut down succesfully")
        else:
            os.system("fuser -k " + self.port + "/tcp > /dev/null 2>&1")
            print("Sirius was shut down forcibly")
