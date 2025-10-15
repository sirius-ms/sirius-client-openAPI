# THIS FILE IS NOT AUTO GENERATED AND MIGHT NEED TO BE CHANGED WHEN API ENDPOINTS CHANGE

import time
import PySirius
from PySirius import PySiriusAPI, ProjectInfo, Job


class Helper:
    """helper methods for ease of use of the SDK"""

    @staticmethod
    def wait_for_job_completion(project_id, job_id, jobs_api):
        if isinstance(jobs_api, PySiriusAPI):
            jobs_api = jobs_api.jobs()
        if isinstance(project_id, ProjectInfo):
            project_id = project_id.project_id
        if isinstance(job_id, Job):
            job_id = job_id.id
        while jobs_api.get_job(project_id, job_id).progress.state not in ["CANCELED", "FAILED", "DONE"]:
            time.sleep(1)