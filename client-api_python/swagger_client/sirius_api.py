import os
import subprocess
import asyncio

import urllib3

class SiriusAPI:

    def __init__(self, project_space, sirius_executable, port=8080):
        self.port = str(port)
        self.project_space = project_space
        self.sirius_executable = sirius_executable
        self.base_path = "http://localhost:" + self.port


    def start_sirius(self):
        run_command = "java -jar " + self.sirius_executable + " --output " + self.project_space + " REST  -p " + self.port + " -s" + ">/dev/null 2>&1"
        # add logs, wait until server is started
        subprocess.Popen([run_command], shell=True)

    def shutdown(self):
        loop = asyncio.get_event_loop()
        loop.run_until_complete(self.__shutdown())
        loop.close()

    async def __shutdown(self):
        http = urllib3.PoolManager()
        resp = http.request('POST', self.base_path + "/actuator/shutdown")
        if resp.status == 200:
            print("Server wash shut down succesfully")
        else:
            os.system("fuser -k " + self.port + "/tcp > /dev/null 2>&1")
            print("Sirus was closed forcibly")
