# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from PySirius.apis.path_to_api import path_to_api

import enum


class PathValues(str, enum.Enum):
    API_PROJECTS_PROJECT_ID = "/api/projects/{projectId}"
    API_PROJECTS_PROJECT_ID_JOBS = "/api/projects/{projectId}/jobs"
    API_PROJECTS_PROJECT_ID_JOBSFROMCONFIG = "/api/projects/{projectId}/jobs-from-config"
    API_PROJECTS_PROJECT_ID_GUI = "/api/projects/{projectId}/gui"
    API_PROJECTS_PROJECT_ID_COMPOUNDS = "/api/projects/{projectId}/compounds"
    API_PROJECTS_PROJECT_ID_COMPOUNDS_IMPORTFROMSTRING = "/api/projects/{projectId}/compounds/import-from-string"
    API_JOBCONFIGS_NAME = "/api/job-configs/{name}"
    API_ACCOUNT_LOGOUT = "/api/account/logout"
    API_ACCOUNT_LOGIN = "/api/account/login"
    API_VERSION_JSON = "/api/version.json"
    API_PROJECTS = "/api/projects"
    API_PROJECTS_PROJECT_ID_JOBS_JOB_ID = "/api/projects/{projectId}/jobs/{jobId}"
    API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_TOPSTRUCTURE = "/api/projects/{projectId}/compounds/{compoundId}/top-structure"
    API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS = "/api/projects/{projectId}/compounds/{compoundId}/formulas"
    API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID = "/api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}"
    API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_TREE = "/api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/tree"
    API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_STRUCTURES = "/api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/structures"
    API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_ISOTOPEPATTERN = "/api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/isotope-pattern"
    API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_FINGERPRINT = "/api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/fingerprint"
    API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_CANOPUSPREDICTIONS = "/api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/canopus-predictions"
    API_PROJECTS_PROJECT_ID_COMPOUNDS_COMPOUND_ID_FORMULAS_FORMULA_ID_BESTCANOPUSPREDICTIONS = "/api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/best-canopus-predictions"
    API_PROJECTS_PROJECT_ID_COMPOUNDS_CID = "/api/projects/{projectId}/compounds/{cid}"
    API_JOBCONFIGS = "/api/job-configs"
    API_DEFAULTJOBCONFIG = "/api/default-job-config"
    API_ACCOUNT_SUBSCRIPTIONS = "/api/account/subscriptions"
    API_ACCOUNT_SIGN_UP = "/api/account/signUp"
    API_ACCOUNT_SIGN_UP_URL = "/api/account/signUpURL"
    API_ACCOUNT_IS_LOGGED_IN = "/api/account/isLoggedIn"
    API_ACCOUNT_ = "/api/account/"
