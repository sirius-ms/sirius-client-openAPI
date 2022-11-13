import typing_extensions

from PySirius.apis.tags import TagValues
from PySirius.apis.tags.graphical_user_interface_api import GraphicalUserInterfaceApi
from PySirius.apis.tags.computations_api import ComputationsApi
from PySirius.apis.tags.login_and_account_api import LoginAndAccountApi
from PySirius.apis.tags.formula_results_api import FormulaResultsApi
from PySirius.apis.tags.compounds_api import CompoundsApi
from PySirius.apis.tags.project_spaces_api import ProjectSpacesApi
from PySirius.apis.tags.version_info_controller_api import VersionInfoControllerApi

TagToApi = typing_extensions.TypedDict(
    'TagToApi',
    {
        TagValues.GRAPHICAL_USER_INTERFACE: GraphicalUserInterfaceApi,
        TagValues.COMPUTATIONS: ComputationsApi,
        TagValues.LOGIN_AND_ACCOUNT: LoginAndAccountApi,
        TagValues.FORMULA_RESULTS: FormulaResultsApi,
        TagValues.COMPOUNDS: CompoundsApi,
        TagValues.PROJECTSPACES: ProjectSpacesApi,
        TagValues.VERSIONINFOCONTROLLER: VersionInfoControllerApi,
    }
)

tag_to_api = TagToApi(
    {
        TagValues.GRAPHICAL_USER_INTERFACE: GraphicalUserInterfaceApi,
        TagValues.COMPUTATIONS: ComputationsApi,
        TagValues.LOGIN_AND_ACCOUNT: LoginAndAccountApi,
        TagValues.FORMULA_RESULTS: FormulaResultsApi,
        TagValues.COMPOUNDS: CompoundsApi,
        TagValues.PROJECTSPACES: ProjectSpacesApi,
        TagValues.VERSIONINFOCONTROLLER: VersionInfoControllerApi,
    }
)
