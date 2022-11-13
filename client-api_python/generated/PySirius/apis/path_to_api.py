import typing_extensions

from PySirius.paths import PathValues
from PySirius.apis.paths.api_projects_project_id import ApiProjectsProjectId
from PySirius.apis.paths.api_projects_project_id_jobs import ApiProjectsProjectIdJobs
from PySirius.apis.paths.api_projects_project_id_jobs_from_config import ApiProjectsProjectIdJobsFromConfig
from PySirius.apis.paths.api_projects_project_id_gui import ApiProjectsProjectIdGui
from PySirius.apis.paths.api_projects_project_id_compounds import ApiProjectsProjectIdCompounds
from PySirius.apis.paths.api_projects_project_id_compounds_import_from_string import ApiProjectsProjectIdCompoundsImportFromString
from PySirius.apis.paths.api_job_configs_name import ApiJobConfigsName
from PySirius.apis.paths.api_account_logout import ApiAccountLogout
from PySirius.apis.paths.api_account_login import ApiAccountLogin
from PySirius.apis.paths.api_version_json import ApiVersionJson
from PySirius.apis.paths.api_projects import ApiProjects
from PySirius.apis.paths.api_projects_project_id_jobs_job_id import ApiProjectsProjectIdJobsJobId
from PySirius.apis.paths.api_projects_project_id_compounds_compound_id_top_structure import ApiProjectsProjectIdCompoundsCompoundIdTopStructure
from PySirius.apis.paths.api_projects_project_id_compounds_compound_id_formulas import ApiProjectsProjectIdCompoundsCompoundIdFormulas
from PySirius.apis.paths.api_projects_project_id_compounds_compound_id_formulas_formula_id import ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaId
from PySirius.apis.paths.api_projects_project_id_compounds_compound_id_formulas_formula_id_tree import ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdTree
from PySirius.apis.paths.api_projects_project_id_compounds_compound_id_formulas_formula_id_structures import ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdStructures
from PySirius.apis.paths.api_projects_project_id_compounds_compound_id_formulas_formula_id_isotope_pattern import ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdIsotopePattern
from PySirius.apis.paths.api_projects_project_id_compounds_compound_id_formulas_formula_id_fingerprint import ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdFingerprint
from PySirius.apis.paths.api_projects_project_id_compounds_compound_id_formulas_formula_id_canopus_predictions import ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdCanopusPredictions
from PySirius.apis.paths.api_projects_project_id_compounds_compound_id_formulas_formula_id_best_canopus_predictions import ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdBestCanopusPredictions
from PySirius.apis.paths.api_projects_project_id_compounds_cid import ApiProjectsProjectIdCompoundsCid
from PySirius.apis.paths.api_job_configs import ApiJobConfigs
from PySirius.apis.paths.api_default_job_config import ApiDefaultJobConfig
from PySirius.apis.paths.api_account_subscriptions import ApiAccountSubscriptions
from PySirius.apis.paths.api_account_sign_up import ApiAccountSignUp
from PySirius.apis.paths.api_account_sign_up_url import ApiAccountSignUpURL
from PySirius.apis.paths.api_account_is_logged_in import ApiAccountIsLoggedIn
from PySirius.apis.paths.api_account_ import ApiAccount

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.API_PROJECTS_PROJECT_ID: ApiProjectsProjectId,
        PathValues.API_PROJECTS_PROJECT_ID_JOBS: ApiProjectsProjectIdJobs,
        PathValues.API_PROJECTS_PROJECT_ID_JOBSFROMCONFIG: ApiProjectsProjectIdJobsFromConfig,
        PathValues.API_PROJECTS_PROJECT_ID_GUI: ApiProjectsProjectIdGui,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS: ApiProjectsProjectIdCompounds,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_IMPORTFROMSTRING: ApiProjectsProjectIdCompoundsImportFromString,
        PathValues.API_JOBCONFIGS_NAME: ApiJobConfigsName,
        PathValues.API_ACCOUNT_LOGOUT: ApiAccountLogout,
        PathValues.API_ACCOUNT_LOGIN: ApiAccountLogin,
        PathValues.API_VERSION_JSON: ApiVersionJson,
        PathValues.API_PROJECTS: ApiProjects,
        PathValues.API_PROJECTS_PROJECT_ID_JOBS_JOB_ID: ApiProjectsProjectIdJobsJobId,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_TOPSTRUCTURE: ApiProjectsProjectIdCompoundsCompoundIdTopStructure,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS: ApiProjectsProjectIdCompoundsCompoundIdFormulas,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaId,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_TREE: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdTree,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_STRUCTURES: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdStructures,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_ISOTOPEPATTERN: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdIsotopePattern,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_FINGERPRINT: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdFingerprint,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_CANOPUSPREDICTIONS: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdCanopusPredictions,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_BESTCANOPUSPREDICTIONS: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdBestCanopusPredictions,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_CID: ApiProjectsProjectIdCompoundsCid,
        PathValues.API_JOBCONFIGS: ApiJobConfigs,
        PathValues.API_DEFAULTJOBCONFIG: ApiDefaultJobConfig,
        PathValues.API_ACCOUNT_SUBSCRIPTIONS: ApiAccountSubscriptions,
        PathValues.API_ACCOUNT_SIGN_UP: ApiAccountSignUp,
        PathValues.API_ACCOUNT_SIGN_UP_URL: ApiAccountSignUpURL,
        PathValues.API_ACCOUNT_IS_LOGGED_IN: ApiAccountIsLoggedIn,
        PathValues.API_ACCOUNT_: ApiAccount,
    }
)

path_to_api = PathToApi(
    {
        PathValues.API_PROJECTS_PROJECT_ID: ApiProjectsProjectId,
        PathValues.API_PROJECTS_PROJECT_ID_JOBS: ApiProjectsProjectIdJobs,
        PathValues.API_PROJECTS_PROJECT_ID_JOBSFROMCONFIG: ApiProjectsProjectIdJobsFromConfig,
        PathValues.API_PROJECTS_PROJECT_ID_GUI: ApiProjectsProjectIdGui,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS: ApiProjectsProjectIdCompounds,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_IMPORTFROMSTRING: ApiProjectsProjectIdCompoundsImportFromString,
        PathValues.API_JOBCONFIGS_NAME: ApiJobConfigsName,
        PathValues.API_ACCOUNT_LOGOUT: ApiAccountLogout,
        PathValues.API_ACCOUNT_LOGIN: ApiAccountLogin,
        PathValues.API_VERSION_JSON: ApiVersionJson,
        PathValues.API_PROJECTS: ApiProjects,
        PathValues.API_PROJECTS_PROJECT_ID_JOBS_JOB_ID: ApiProjectsProjectIdJobsJobId,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_TOPSTRUCTURE: ApiProjectsProjectIdCompoundsCompoundIdTopStructure,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS: ApiProjectsProjectIdCompoundsCompoundIdFormulas,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaId,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_TREE: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdTree,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_STRUCTURES: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdStructures,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_ISOTOPEPATTERN: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdIsotopePattern,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_FINGERPRINT: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdFingerprint,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_CANOPUSPREDICTIONS: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdCanopusPredictions,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_BESTCANOPUSPREDICTIONS: ApiProjectsProjectIdCompoundsCompoundIdFormulasFormulaIdBestCanopusPredictions,
        PathValues.API_PROJECTS_PROJECT_ID_COMPOUNDS_CID: ApiProjectsProjectIdCompoundsCid,
        PathValues.API_JOBCONFIGS: ApiJobConfigs,
        PathValues.API_DEFAULTJOBCONFIG: ApiDefaultJobConfig,
        PathValues.API_ACCOUNT_SUBSCRIPTIONS: ApiAccountSubscriptions,
        PathValues.API_ACCOUNT_SIGN_UP: ApiAccountSignUp,
        PathValues.API_ACCOUNT_SIGN_UP_URL: ApiAccountSignUpURL,
        PathValues.API_ACCOUNT_IS_LOGGED_IN: ApiAccountIsLoggedIn,
        PathValues.API_ACCOUNT_: ApiAccount,
    }
)
