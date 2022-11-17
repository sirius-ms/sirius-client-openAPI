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

class PySiriusAPI:

    def __init__(self, address="http://localhost", port=8080):
        self.port = str(port)
        base_path = address + ":" + self.port
        configuration = PySirius.Configuration(host = base_path)
        self.api_client = PySirius.ApiClient(configuration)
    
    def get_CompoundsApi(self):
        return compounds_api.CompoundsApi(self.api_client)
    def get_ComputationsApi(self):
        return computations_api.ComputationsApi(self.api_client)
    def get_FormulaResultsApi(self):
        return formula_results_api.FormulaResultsApi(self.api_client)
    def get_GraphicalUserInterfaceApi(self):
        return graphical_user_interface_api.GraphicalUserInterfaceApi(self.api_client)
    def get_LoginAndAccountApi(self):
        return login_and_account_api.LoginAndAccountApi(self.api_client)
    def get_ProjectSpacesApi(self):
        return project_spaces_api.ProjectSpacesApi(self.api_client)
    def get_VersionInfoControllerApi(self):
        return version_info_controller_api.VersionInfoControllerApi(self.api_client)
