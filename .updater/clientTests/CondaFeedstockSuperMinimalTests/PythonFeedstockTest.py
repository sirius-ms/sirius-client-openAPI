from PySirius import SiriusSDK, Info

api = SiriusSDK().attach_or_start_sirius(headless=True)
response = api.infos().get_info()

assert isinstance(response, Info), "Error: Did not return an object of class Info."

SiriusSDK().shutdown_sirius()