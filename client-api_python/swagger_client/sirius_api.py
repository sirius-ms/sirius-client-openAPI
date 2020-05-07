import os
import subprocess
import asyncio

import urllib3

class SiriusAPI:

    def __init__(self, ps_path, jar_path, port=8080):
        self.port = str(port)
        self.ps_path = ps_path
        self.jar_path = jar_path
        self.base_path = "http://localhost:" + self.port

    def start_server(self):
        run_command = "java -jar " + self.jar_path + " --output " + self.ps_path + " REST  -p " + self.port + " -s" + ">/dev/null 2>&1"
        subprocess.Popen([run_command], shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE)

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
            print("Server could not be shutdown")
