# THIS FILE IS NOT AUTO GENERATED AND MIGHT NEED TO BE CHANGED WHEN API ENDPOINTS CHANGE

import PySirius


class PySiriusAPI:
    """allows access to API endpoints and model classes"""

    def __init__(self, api_client):
        self.api_client = api_client

    def get_client(self):
        return self.api_client

    def actuator(self):
        """returns API endpoint of the ActuatorApi"""
        return PySirius.ActuatorApi(self.api_client)

    def compound_statistics(self):
        """returns API endpoint of the CompoundsStatisticsApi"""
        return PySirius.CompoundStatisticsApi(self.api_client)

    def compounds(self):
        """returns API endpoint of the CompoundsApi"""
        return PySirius.CompoundsApi(self.api_client)

    def feature_statistics(self):
        """returns API endpoint of the FeaturesStatisticsApi"""
        return PySirius.FeatureStatisticsApi(self.api_client)

    def features(self):
        """returns API endpoint of the FeaturesApi"""
        return PySirius.FeaturesApi(self.api_client)

    def infos(self):
        """returns API endpoint of the InfoApi"""
        return PySirius.InfoApi(self.api_client)

    def jobs(self):
        """returns API endpoint of the JobsApi"""
        return PySirius.JobsApi(self.api_client)

    def account(self):
        """returns API endpoint of the LoginAndAccountApi"""
        return PySirius.LoginAndAccountApi(self.api_client)

    def projects(self):
        """returns API endpoint of the ProjectsApi"""
        return PySirius.ProjectsApi(self.api_client)

    def runs(self):
        """returns API endpoint of the RunsApi"""
        return PySirius.RunsApi(self.api_client)

    def databases(self):
        """returns API endpoint of the SearchableDatabasesApi"""
        return PySirius.SearchableDatabasesApi(self.api_client)

    def tags(self):
        """returns API endpoint of the TagsApi"""
        return PySirius.TagsApi(self.api_client)

    def models(self):
        """returns the Superclass of all models"""
        return PySirius.models