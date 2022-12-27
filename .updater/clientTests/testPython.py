from PySirius import SiriusSDK
import PySirius.models as models

credentials = {"username":"lukas.scholz@uni-jena.de", "password":"Lukas2000sh"}
path_to_sirius = ".updater/api/sirius/bin/sirius"
path_to_project = ".updater/api/temp"
path_to_demo_data = ".updater/examples"
api = SiriusSDK.start(path_to_project, path_to_sirius)
ps_name = api.get_ProjectSpacesApi().get_project_spaces()[0].name


def setup_module():
  api.get_LoginAndAccountApi().login(credentials, True)

def teardown_module():
  api.get_LoginAndAccountApi().logout()
    


def test_Computations():
  test = api.get_ComputationsApi()
  assert True

def test_ProjectSpaces():
  test = api.get_ProjectSpacesApi()
  test.get_project_spaces()
  assert True

def test_LoginAndAccounts():
  test = api.get_LoginAndAccountApi()
  assert test.is_logged_in()
  assert test.is_logged_in_with_http_info()
  test.get_subscriptions()
  test.get_subscriptions_with_http_info()
  test.get_sign_up_url()
  test.get_sign_up_url_with_http_info()
  # test.sign_up()
  # test.sign_up_with_http_info()
  assert True

def test_FormulaResults():
  test = api.get_FormulaResultsApi()
  assert True

def test_Compounds():
  test = api.get_CompoundsApi()
  test.get_compounds(ps_name)
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
  
def test_Workflow():
  api.get_CompoundsApi().import_compounds([path_to_demo_data+"/ms/Bicuculline.ms", path_to_demo_data+"/ms/Kaempferol.ms" ], ps_name)
  print(api.get_CompoundsApi().get_compounds(ps_name))  # TODO: Compounds not imported??
  fallback_adducts = ["[M+H]+","[M]+,[M+K]+","[M+Na]+","[M+H-H2O]+","[M+Na2-H]+","[M+2K-H]+","[M+NH4]+","[M+H3O]+","[M+MeOH+H]+"]
  detectable_adducts = ["[M+H]+","[M]+,[M+K]+","[M+Na]+","[M+H-H2O]+","[M+Na2-H]+","[M+2K-H]+","[M+NH4]+","[M+H3O]+","[M+MeOH+H]+"]
  formula_id_paras = models.Sirius(True)
  #job = models.JobSubmission([api.get_CompoundsApi().get_compounds(ps_name)[0].id, api.get_CompoundsApi().get_compounds(ps_name)[1].id], fallback_adducts, None, detectable_adducts, True, formula_id_paras)
  #api.get_ComputationsApi().start_job(job, ps_name)
  assert True
  
    