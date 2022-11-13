from PySirius.paths.api_projects_project_id_gui.post import ApiForpost
from PySirius.paths.api_projects_project_id_gui.delete import ApiFordelete
from PySirius.paths.api_projects_project_id_gui.patch import ApiForpatch


class ApiProjectsProjectIdGui(
    ApiForpost,
    ApiFordelete,
    ApiForpatch,
):
    pass
