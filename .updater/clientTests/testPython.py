from PySirius import SiriusSDK



path_to_sirius = ".updater/api/sirius/bin/sirius"
path_to_project = ".updater/api/temp"


api = SiriusSDK.start(path_to_project, path_to_sirius)



def TestComputations():
  api.get_ComputationsApi()
  assert True

def TestProjectSpaces():
  api.get_ProjectSpacesApi()
  assert True

def TestLoginAndAccounts():
  api.get_LoginAndAccountApi()
  assert True

def TestFormulaResults():
  api.get_FormulaResultsApi()
  assert True

def TestCompounds():
  api.get_CompoundsApi()
  assert True
  
def TestVersionController():
  api.get_VersionInfoControllerApi()
  assert True
  
def TestGUI():
  api.get_GraphicalUserInterfaceApi()
  assert True
