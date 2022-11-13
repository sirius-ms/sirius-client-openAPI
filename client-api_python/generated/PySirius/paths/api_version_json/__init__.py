# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from PySirius.paths.api_version_json import Api

from PySirius.paths import PathValues

path = PathValues.API_VERSION_JSON