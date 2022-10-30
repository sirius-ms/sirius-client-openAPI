import os
import time
import subprocess
import asyncio
import json

import urllib3
import PySirius

class SiriusAPI:

    def __init__(self, project_space, sirius_executable, port=8080):
        self.port = str(port)
        self.project_space = project_space
        self.sirius_executable = sirius_executable
        self.base_path = "http://localhost:" + self.port

    def start_sirius(self):
        is_up = False
        http = urllib3.PoolManager()


        # add windows and mac
        executable_exist = os.path.exists(self.sirius_executable)
        project_space_exist = os.path.exists(self.project_space)

        if executable_exist and project_space_exist:
            # run_command = "java -jar " + self.sirius_executable + " --output " + self.project_space + " REST  -p " + self.port + " -s" + "> log.txt 2>&1"
            run_command = self.sirius_executable + " --output " + self.project_space + " REST  -p " + self.port + " -s" + "> log.txt 2>&1"
            subprocess.Popen([run_command], shell=True)

            while not is_up:
                time.sleep(0.5)
                try:
                    resp = http.request('GET', self.base_path + "/actuator/health")
                    if resp.status == 200:
                        resp_data = json.loads(resp.data.decode('utf-8'))
                        is_up = resp_data["status"] == "UP"
                        if is_up:
                            print("Sirius started succesully on the port " + self.port)
                except:
                    pass
        else:
            print("Wrong path to project space or executable")
            return None

    def shutdown(self):
        try:
            loop = asyncio.new_event_loop()
            loop.run_until_complete(self.__shutdown())
            loop.close()
        except:
            print("Sirius is down")

    async def __shutdown(self):
        http = urllib3.PoolManager()
        resp = http.request('POST', self.base_path + "/actuator/shutdown")
        if resp.status == 200:
            print("Sirius wash shut down succesfully")
        else:

            # add for windows and mac
            os.system("fuser -k " + self.port + "/tcp > /dev/null 2>&1")
            print("Sirius was shut down forcibly")
    
    class CompoundsApi:
        api_instance = PySirius.CompoundsApi()
        def delete_compound(project_id, compound_id):
            return self.api_instance.delete_compound(project_id, compound_id)
        def get_compound(project_id, compound_id, top_annotation = False, ms_data = False):
            return self.api_instance.get_compound(project_id, compound_id, top_annotation, ms_data)
        def get_compounds(project_id, top_annotation = False, ms_data = False):
            return self.api_instance.get_compound(project_id, top_annotation, ms_data)
        def import_compounds(body, project_id, align_lcms_runs = False, allow_ms1_only_data = True, ignore_formulas = False):
            return self.api_instance.import_compounds(body, project_id, align_lcms_runs, allow_ms1_only_data, ignore_formulas)
        def import_compounds_from_string(body, data_format, project_id, source_name=None):
            return self.api_instance.import_compounds_from_string(body, data_format, project_id, source_name)
    class ComputationsApi:
        api_instance = PySirius.ComputationsApi()
        def delete_job(project_id, job_id, cancel_if_running=True, await_deletion=True):
            return self.api_instance.delete_job(project_id, job_id, cancel_if_running, await_deletion)
        def delete_job_config(name):
            return self.api_instance.delete_job_config(name)
        def get_default_job_config(include_config_map=False):
            return self.api_instance.get_default_job_config(include_config_map)
        def get_job(project_id, job_id, include_state=True, include_command=False, include_affected_compounds=False):
            return self.api_instance.get_job(project_id, job_id, include_state, include_command, include_affected_compounds)
        def get_job_config(name, include_config_map=False):
            return self.api_instance.get_job_config(name, include_config_map)
        def get_job_configs(include_config_map=False):
            return self.api_instance.get_job_configs(include_config_map)
        def get_jobs(project_id, include_state=False, include_command=False, include_affected_compounds=False):
            return self.api_instance.get_jobs(project_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)
        def post_job_config(body, name, override_existing=False):
            return self.api_instance.post_job_config(body, name, override_existing)
        def start_job(body, project_id, include_state=True, include_command=True, include_affected_compounds=False):
            return self.api_instance.start_job(body, project_id, include_state, include_command, include_affected_compounds)
        def start_job_from_config(body, job_config_name, project_id, recompute=True, include_state=True, include_command=True, include_affected_compounds=False):
            return self.api_instance.start_job_from_config(body, job_config_name, project_id, recompute, include_state, include_command, include_affected_compounds)
    class FormulaResultsApi:
        api_instance = PySirius.FormulaResultsApi()
        def get_best_matching_canopus_predictions(project_id, compound_id, formula_id):
            return self.api_instance.get_best_matching_canopus_predictions(project_id, compound_id, formula_id)
        def get_canopus_predictions(project_id, compound_id, formula_id):
            return self.api_instance.get_canopus_predictions(project_id, compound_id, formula_id)
        def get_fingerprint_prediction(project_id, compound_id, formula_id):
            return self.api_instance.get_fingerprint_prediction(project_id, compound_id, formula_id)
        def get_formula_ids(project_id, compound_id, result_overview=True, formula_candidate=False):
            return self.api_instance.get_formula_ids(project_id, compound_id, result_overview=result_overview, formula_candidate=formula_candidate)
        def get_formula_result(project_id, compound_id, formula_id, result_overview=True, formula_candidate=True):
            return self.api_instance.get_formula_result(project_id, compound_id, formula_id, result_overview, formula_candidate)
        def get_frag_tree(project_id, compound_id, formula_id):
            return self.api_instance.get_frag_tree(project_id, compound_id, formula_id)
        def get_simulated_isotope_pattern(project_id, compound_id, formula_id):
            return self.api_instance.get_simulated_isotope_pattern(project_id, compound_id, formula_id)
        def get_structure_candidates(project_id, compound_id, formula_id, fingerprint=False, db_links=False, pub_med_ids=False, top_k=-1):
            return self.api_instance.get_structure_candidates(project_id, compound_id, formula_id, fingerprint, db_links, pub_med_ids, top_k)
        def get_top_structure_candidate(project_id, compound_id, fingerprint=False, db_links=False, pub_med_ids=False):
            return self.api_instance.get_top_structure_candidate(project_id, compound_id, fingerprint, db_links, pub_med_ids)
    class GraphicalUserInterfaceApi:
        api_instance = PySirius.GraphicalUserInterfaceApi()
        def apply_to_gui(body, project_id):
            return self.api_instance.apply_to_gui(body, project_id)
        def close_gui(project_id):
            return self.api_instance.close(project_id)
        def open_gui(project_id, read_only=True):
            return self.api_instance.open_gui(project_id, read_only=read_only)
    class LoginAndAccountApi:
        api_instance = PySirius.LoginAndAccountApi()
        def get_account_info(include_subs=False):
            return self.api_instance.get_account_info(include_subs)
        def get_sign_up_url():
            return self.api_instance.get_sign_up_url()
        def get_subscriptions():
            return self.api_instance.get_subscriptions()
        def is_logged_in():
            return self.api_instance.is_logged_in()
        def login(body, accept_terms=True, fail_when_logged_in=False, include_subs=False):
            return self.api_instance.login(body, accept_terms, fail_when_logged_in, include_subs)
        def logout():
            return self.api_instance.logout()
        def sign_up():
            return self.api_instance.sign_up()
    class ProjectSpacesApi:
        api_instance = PySirius.ProjectSpacesApi()
        def close_project_space(project_id):
            return self.api_instance.close_project_space(project_id)
        def create_project_space(project_id, path_to_project, path_to_source_project=None, await_import=True):
            return self.api_instance.create_project_space(project_id, path_to_project, path_to_source_project, await_import)
        def get_project_space(project_id):
            return self.api_instance.get_project_space(project_id)
        def get_project_spaces():
            return self.api_instance.get_project_spaces()
        def open_project_space(project_id, path_to_project):
            return self.api_instance.open_project_space(project_id, path_to_project)
    class VersionInfoControllerApi:
        api_instance = PySirius.VersionInfoControllerApi()
        def get_version_info():
            return self.api_instance.get_version_info()
    class Models:
        def AccountCredentials(username, password, refresh_token):
            return 