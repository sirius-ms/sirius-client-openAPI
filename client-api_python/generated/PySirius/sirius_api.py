import PySirius

class PySiriusAPI:

    def __init__(self, address="http://localhost", port=8080):
        self.port = str(port)
        base_path = address + ":" + self.port
        configuration = PySirius.Configuration()
        configuration.host = base_path
        self.api_client = PySirius.ApiClient(configuration)
    
    def get_CompoundsApi(self):
        return PySirius.CompoundsApi(self.api_client)
    def get_ComputationsApi(self):
        return PySirius.ComputationsApi(self.api_client)
    def get_FormulaResultsApi(self):
        return PySirius.FormulaResultsApi(self.api_client)
    def get_GraphicalUserInterfaceApi(self):
        return PySirius.GraphicalUserInterfaceApi(self.api_client)
    def get_LoginAndAccountApi(self):
        return PySirius.LoginAndAccountApi(self.api_client)
    def get_ProjectSpacesApi(self):
        return PySirius.ProjectSpacesApi(self.api_client)
    def get_VersionInfoControllerApi(self):
        return PySirius.VersionInfoControllerApi(self.api_client)
    def get_models(self):
        return PySirius.models
