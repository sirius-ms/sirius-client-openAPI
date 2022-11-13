from PySirius.paths.api_job_configs_name.get import ApiForget
from PySirius.paths.api_job_configs_name.post import ApiForpost
from PySirius.paths.api_job_configs_name.delete import ApiFordelete


class ApiJobConfigsName(
    ApiForget,
    ApiForpost,
    ApiFordelete,
):
    pass
