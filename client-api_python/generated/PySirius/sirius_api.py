import PySirius

class PySiriusAPI:
    """allows accession of API endpoints and model classes"""

    def __init__(self, address="http://localhost", port=8080):
        self.port = str(port)
        base_path = address + ":" + self.port
        configuration = PySirius.Configuration()
        configuration.host = base_path
        self.api_client = PySirius.ApiClient(configuration)
    
    def get_CompoundsApi(self):
        """returns API endpoint of the CompoundsApi"""
        return PySirius.CompoundsApi(self.api_client)
    def get_ComputationsApi(self):
        """returns API endpoint of the ComputationsApi"""
        return PySirius.ComputationsApi(self.api_client)
    def get_FormulaResultsApi(self):
        """returns API endpoint of the FormulaResultsApi"""
        return PySirius.FormulaResultsApi(self.api_client)
    def get_GraphicalUserInterfaceApi(self):
        """returns API endpoint of the GraphicalUserInterfaceApi"""
        return PySirius.GraphicalUserInterfaceApi(self.api_client)
    def get_LoginAndAccountApi(self):
        """returns API endpoint of the LoginAndAccountApi"""
        return PySirius.LoginAndAccountApi(self.api_client)
    def get_ProjectSpacesApi(self):
        """returns API endpoint of the ProjectSpacesApi"""
        return PySirius.ProjectSpacesApi(self.api_client)
    def get_VersionInfoControllerApi(self):
        """returns API endpoint of the VersionInfoControllerApi"""
        return PySirius.VersionInfoControllerApi(self.api_client)
    def get_models(self):
        """returns the Superclass of all models"""
        return PySirius.models
