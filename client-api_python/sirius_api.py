#THIS FILE IS NOT AUTO GENERATED AND MIGHT NEED TO BE CHANGED WHEN API ENDPOINTS CHANGE

import PySirius

class PySiriusAPI:
    """allows accession of API endpoints and model classes"""

    def __init__(self, api_client):

        self.api_client = api_client
    
    def get_CompoundsApi(self):
        """returns API endpoint of the CompoundsApi"""
        return PySirius.CompoundsApi(self.api_client)
    def get_JobsApi(self):
        """returns API endpoint of the JobsApi"""
        return PySirius.JobsApi(self.api_client)
    def get_FeaturesApi(self):
        """returns API endpoint of the FeaturesApi"""
        return PySirius.FeaturesApi(self.api_client)
    def get_ExperimentalGUIApi(self):
        """returns API endpoint of the ExperimentalGUIApi"""
        return PySirius.ExperimentalGUIApi(self.api_client)
    def get_LoginAndAccountApi(self):
        """returns API endpoint of the LoginAndAccountApi"""
        return PySirius.LoginAndAccountApi(self.api_client)
    def get_ProjectsApi(self):
        """returns API endpoint of the ProjectsApi"""
        return PySirius.ProjectsApi(self.api_client)
    def get_InfoApi(self):
        """returns API endpoint of the InfoApi"""
        return PySirius.InfoApi(self.api_client)
    def get_ActuatorApi(self):
        """returns API endpoint of the ActuatorApi"""
        return PySirius.ActuatorApi(self.api_client)
    def get_models(self):
        """returns the Superclass of all models"""
        return PySirius.models
