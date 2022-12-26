from PySirius import SiriusSDK



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
  test.login({"username":"lukas.scholz@uni-jena.de", "password":"Lukas2000sh"}, True)
  test.is_logged_in()
  test.is_logged_in_with_http_info()
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
  assert True
