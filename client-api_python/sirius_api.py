import os
import time
import subprocess
import asyncio
import json

import urllib3
import PySirius

from PySirius.apis.tags import compounds_api
from PySirius.apis.tags import computations_api
from PySirius.apis.tags import formula_results_api
from PySirius.apis.tags import graphical_user_interface_api
from PySirius.apis.tags import login_and_account_api
from PySirius.apis.tags import project_spaces_api
from PySirius.apis.tags import version_info_controller_api

class SiriusAPI:

    def __init__(self, project_space, sirius_executable, port=8080):
        self.port = str(port)
        self.project_space = project_space
        self.sirius_executable = sirius_executable
        self.base_path = "http://localhost:" + self.port

    def start_sirius(self):
        is_up = False
        http = urllib3.PoolManager()


        # add windows and mac
        executable_exist = os.path.exists(self.sirius_executable)
        project_space_exist = os.path.exists(self.project_space)

        if executable_exist and project_space_exist:
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
        else:
            print("Wrong path to project space or executable")
            return None

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

            # add for windows and mac
            os.system("fuser -k " + self.port + "/tcp > /dev/null 2>&1")
            print("Sirius was shut down forcibly")
    
    def get_CompoundsApi():
        return compounds_api.CompoundsApi
    def get_ComputationsApi():
        return computations_api.ComputationsApi
    def get_FormulaResultsApi():
        return formula_results_api.FormulaResultsApi
    def get_GraphicalUserInterfaceApi():
        return graphical_user_interface_api.GraphicalUserInterfaceApi
    def get_LoginAndAccountApi():
        return login_and_account_api.LoginAndAccountApi
    def get_ProjectSpacesApi():
        return project_spaces_api.ProjectSpacesApi
    def get_VersionInfoControllerApi():
        return version_info_controller_api.VersionInfoControllerApi
    def get_Model_Superclass():
        return PySirius.model
