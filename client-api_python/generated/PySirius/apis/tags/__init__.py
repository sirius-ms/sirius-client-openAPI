# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from PySirius.apis.tag_to_api import tag_to_api

import enum


class TagValues(str, enum.Enum):
    GRAPHICAL_USER_INTERFACE = "Graphical user Interface"
    COMPUTATIONS = "Computations"
    LOGIN_AND_ACCOUNT = "Login and Account"
    FORMULA_RESULTS = "Formula Results"
    COMPOUNDS = "Compounds"
    PROJECTSPACES = "Project-Spaces"
    VERSIONINFOCONTROLLER = "version-info-controller"
