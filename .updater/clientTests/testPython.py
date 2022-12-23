from PySirius import SiriusSDK



path_to_sirius = ".updater/api/sirius/bin/sirius"
path_to_project = ".updater/api/temp"


api = SiriusSDK.start(path_to_project, path_to_sirius)



def test_Computations():
  api.get_ComputationsApi()
  assert True

def test_ProjectSpaces():
  api.get_ProjectSpacesApi()
  assert True

def test_LoginAndAccounts():
  api.get_LoginAndAccountApi()
  assert True

def test_FormulaResults():
  api.get_FormulaResultsApi()
  assert True

def test_Compounds():
  api.get_CompoundsApi()
  assert True
  
def test_VersionController():
  api.get_VersionInfoControllerApi()
  assert True
  
def test_GUI():
  api.get_GraphicalUserInterfaceApi()
  assert True
