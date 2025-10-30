# THIS FILE IS NOT AUTO GENERATED AND MIGHT NEED TO BE CHANGED WHEN API ENDPOINTS CHANGE

import time
import PySirius
from warnings import warn
from PySirius import PySiriusAPI, ProjectInfo, Job

class Helper:
    """helper methods for ease of use of the SDK"""

    def __init__(self, *args, **kwargs):
        warn(f'{self.__class__.__name__} will be deprecated.', DeprecationWarning, stacklevel=2)
        super().__init__(*args, **kwargs)

    @staticmethod
    def wait_for_job_completion(project_id, job_id, jobs_api):
        warn("This function will be deprecated. Use PySiriusAPI.wait_for_job_completion instead!", DeprecationWarning, stacklevel=2)
        if isinstance(jobs_api, PySiriusAPI):
            jobs_api = jobs_api.jobs()
        if isinstance(project_id, ProjectInfo):
            project_id = project_id.project_id
        if isinstance(job_id, Job):
            job_id = job_id.id
        while jobs_api.get_job(project_id, job_id).progress.state not in ["CANCELED", "FAILED", "DONE"]:
            time.sleep(1)