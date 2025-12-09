# THIS FILE IS NOT AUTO GENERATED AND MIGHT NEED TO BE CHANGED WHEN API ENDPOINTS CHANGE

import PySirius
import logging
import traceback
import time
from PySirius import Job, ProjectInfo


class PySiriusAPI:
    """allows access to API endpoints and model classes"""

    def __init__(self, api_client):
        self.api_client = api_client

    def get_client(self):
        return self.api_client

    def actuator(self):
        """returns API endpoint of the ActuatorApi"""
        return PySirius.ActuatorApi(self.api_client)

    def compounds(self):
        """returns API endpoint of the CompoundsApi"""
        return PySirius.CompoundsApi(self.api_client)

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

    def databases(self):
        """returns API endpoint of the SearchableDatabasesApi"""
        return PySirius.SearchableDatabasesApi(self.api_client)

    def models(self):
        """returns the Superclass of all models"""
        return PySirius.models

    def wait_for_job_completion(self, project_id, job_id, timeout_in_sec=None):
        if isinstance(project_id, ProjectInfo):
            project_id = project_id.project_id
        if isinstance(job_id, Job):
            job_id = job_id.id
        try:
            while PySirius.JobsApi(self.api_client).get_job(project_id, job_id).progress.state not in ["CANCELED", "FAILED", "DONE"]:
                time.sleep(1)
                if isinstance(timeout_in_sec, int):
                    timeout_in_sec = timeout_in_sec - 1
                    if timeout_in_sec == 0: return
        except Exception as e:
            logging.error(traceback.format_exc())