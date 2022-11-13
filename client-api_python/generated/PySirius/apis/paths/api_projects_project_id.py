from PySirius.paths.api_projects_project_id.get import ApiForget
from PySirius.paths.api_projects_project_id.put import ApiForput
from PySirius.paths.api_projects_project_id.post import ApiForpost
from PySirius.paths.api_projects_project_id.delete import ApiFordelete


class ApiProjectsProjectId(
    ApiForget,
    ApiForput,
    ApiForpost,
    ApiFordelete,
):
    pass
