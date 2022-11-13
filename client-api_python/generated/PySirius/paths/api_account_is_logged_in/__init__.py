# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from PySirius.paths.api_account_is_logged_in import Api

from PySirius.paths import PathValues

path = PathValues.API_ACCOUNT_IS_LOGGED_IN