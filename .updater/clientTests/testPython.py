from PySirius import SiriusSDK

credentials = {"username":"lukas.scholz@uni-jena.de", "password":"Lukas2000sh"}
path_to_sirius = ".updater/api/sirius/bin/sirius"
path_to_project = ".updater/api/temp"

api = SiriusSDK.start(path_to_project, path_to_sirius)



def test_Computations():
  test = api.get_ComputationsApi()
  assert True

def test_ProjectSpaces():
  test = api.get_ProjectSpacesApi()
  assert True

def test_LoginAndAccounts():
  test = api.get_LoginAndAccountApi()
  test.login_with_http_info(credentials, True)
  assert test.is_logged_in()
  assert test.is_logged_in_with_http_info()
  test.get_subscriptions()
  test.get_subscriptions_with_http_info()
  test.get_sign_up_url()
  test.get_sign_up_url_with_http_info()
  # test.sign_up()
  # test.sign_up_with_http_info()
  test.logout_with_http_info()
  assert True

def test_FormulaResults():
  test = api.get_FormulaResultsApi()
  assert True

def test_Compounds():
  test = api.get_CompoundsApi()
  assert True
  
def test_VersionController():
  test = api.get_VersionInfoControllerApi()
  test.get_version_info()
  test.get_version_info_with_http_info()
  assert True
  
def test_GUI():
  test = api.get_GraphicalUserInterfaceApi()
  # test.open_gui()
  # test.close_gui()
  assert True
