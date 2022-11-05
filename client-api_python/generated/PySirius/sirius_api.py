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
        def delete_compound(project_id, compound_id):
            api_instance = PySirius.CompoundsApi()
            return api_instance.delete_compound(project_id, compound_id)
        def get_compound(project_id, compound_id, top_annotation = False, ms_data = False):
            api_instance = PySirius.CompoundsApi()
            return api_instance.get_compound(project_id, compound_id, top_annotation=top_annotation, ms_data=ms_data)
        def get_compounds(project_id, top_annotation = False, ms_data = False):
            api_instance = PySirius.CompoundsApi()
            return api_instance.get_compound(project_id, top_annotation=top_annotation, ms_data=ms_data)
        def import_compounds(body, project_id, align_lcms_runs = False, allow_ms1_only_data = True, ignore_formulas = False):
            api_instance = PySirius.CompoundsApi()
            return api_instance.import_compounds(body, project_id=project_id, align_lcms_runs=align_lcms_runs, allow_ms1_only_data=allow_ms1_only_data, ignore_formulas=ignore_formulas)
        def import_compounds_from_string(body, data_format, project_id, source_name=None):
            api_instance = PySirius.CompoundsApi()
            return api_instance.import_compounds_from_string(body, data_format, project_id, source_name=source_name)
    class ComputationsApi:
        def delete_job(project_id, job_id, cancel_if_running=True, await_deletion=True):
            api_instance = PySirius.ComputationsApi()
            return api_instance.delete_job(project_id, job_id, cancel_if_running=cancel_if_running, await_deletion=await_deletion)
        def delete_job_config(name):
            api_instance = PySirius.ComputationsApi()
            return api_instance.delete_job_config(name)
        def get_default_job_config():
            api_instance = PySirius.ComputationsApi()
            return api_instance.get_default_job_config()
        def get_job(project_id, job_id, include_state=True, include_command=False, include_affected_compounds=False):
            api_instance = PySirius.ComputationsApi()
            return api_instance.get_job(project_id, job_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)
        def get_job_config(name, include_config_map=False):
            api_instance = PySirius.ComputationsApi()
            return api_instance.get_job_config(name, include_config_map=include_config_map)
        def get_job_configs(include_config_map=False):
            api_instance = PySirius.ComputationsApi()
            return api_instance.get_job_configs(include_config_map=include_config_map)
        def get_jobs(project_id, include_state=False, include_command=False, include_affected_compounds=False):
            api_instance = PySirius.ComputationsApi()
            return api_instance.get_jobs(project_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)
        def post_job_config(body, name, override_existing=False):
            api_instance = PySirius.ComputationsApi()
            return api_instance.post_job_config(body, name, override_existing=override_existing)
        def start_job(body, project_id, include_state=True, include_command=True, include_affected_compounds=False):
            api_instance = PySirius.ComputationsApi()
            return api_instance.start_job(body, project_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)
        def start_job_from_config(body, job_config_name, project_id, recompute=True, include_state=True, include_command=True, include_affected_compounds=False):
            api_instance = PySirius.ComputationsApi()
            return api_instance.start_job_from_config(body, job_config_name, project_id, recompute=recompute, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)
    class FormulaResultsApi:
        def get_best_matching_canopus_predictions(project_id, compound_id, formula_id):
            api_instance = PySirius.FormulaResultsApi()
            return api_instance.get_best_matching_canopus_predictions(project_id, compound_id, formula_id)
        def get_canopus_predictions(project_id, compound_id, formula_id):
            api_instance = PySirius.FormulaResultsApi()
            return api_instance.get_canopus_predictions(project_id, compound_id, formula_id)
        def get_fingerprint_prediction(project_id, compound_id, formula_id):
            api_instance = PySirius.FormulaResultsApi()
            return api_instance.get_fingerprint_prediction(project_id, compound_id, formula_id)
        def get_formula_ids(project_id, compound_id, result_overview=True, formula_candidate=False):
            api_instance = PySirius.FormulaResultsApi()
            return api_instance.get_formula_ids(project_id, compound_id, result_overview=result_overview, formula_candidate=formula_candidate)
        def get_formula_result(project_id, compound_id, formula_id, result_overview=True, formula_candidate=True):
            api_instance = PySirius.FormulaResultsApi()
            return api_instance.get_formula_result(project_id, compound_id, formula_id, result_overview=result_overview, formula_candidate=formula_candidate)
        def get_frag_tree(project_id, compound_id, formula_id):
            api_instance = PySirius.FormulaResultsApi()
            return api_instance.get_frag_tree(project_id, compound_id, formula_id)
        def get_simulated_isotope_pattern(project_id, compound_id, formula_id):
            api_instance = PySirius.FormulaResultsApi()
            return api_instance.get_simulated_isotope_pattern(project_id, compound_id, formula_id)
        def get_structure_candidates(project_id, compound_id, formula_id, fingerprint=False, db_links=False, pub_med_ids=False, top_k=-1):
            api_instance = PySirius.FormulaResultsApi()
            return api_instance.get_structure_candidates(project_id, compound_id, formula_id, fingerprint=fingerprint, db_links=db_links, pub_med_ids=pub_med_ids, top_k=top_k)
        def get_top_structure_candidate(project_id, compound_id, fingerprint=False, db_links=False, pub_med_ids=False):
            api_instance = PySirius.FormulaResultsApi()
            return api_instance.get_top_structure_candidate(project_id, compound_id, fingerprint=fingerprint, db_links=db_links, pub_med_ids=pub_med_ids)
    class GraphicalUserInterfaceApi:
        def apply_to_gui(body, project_id):
            api_instance = PySirius.GraphicalUserInterfaceApi()
            return api_instance.apply_to_gui(body, project_id)
        def close_gui(project_id):
            api_instance = PySirius.GraphicalUserInterfaceApi()
            return api_instance.close(project_id)
        def open_gui(project_id, read_only=True):
            api_instance = PySirius.GraphicalUserInterfaceApi()
            return api_instance.open_gui(project_id, read_only=read_only)
    class LoginAndAccountApi:
        def get_account_info(include_subs=False):
            api_instance = PySirius.LoginAndAccountApi()
            return api_instance.get_account_info(include_subs=include_subs)
        def get_sign_up_url():
            api_instance = PySirius.LoginAndAccountApi()
            return api_instance.get_sign_up_url()
        def get_subscriptions():
            api_instance = PySirius.LoginAndAccountApi()
            return api_instance.get_subscriptions()
        def is_logged_in():
            api_instance = PySirius.LoginAndAccountApi()
            return api_instance.is_logged_in()
        def login(body, accept_terms=True, fail_when_logged_in=False, include_subs=False):
            api_instance = PySirius.LoginAndAccountApi()
            return api_instance.login(body, accept_terms=accept_terms, fail_when_logged_in=fail_when_logged_in, include_subs=include_subs)
        def logout():
            api_instance = PySirius.LoginAndAccountApi()
            return api_instance.logout()
        def sign_up():
            api_instance = PySirius.LoginAndAccountApi()
            return api_instance.sign_up()
    class ProjectSpacesApi:
        def close_project_space(project_id):
            api_instance = PySirius.ProjectSpacesApi()
            return api_instance.close_project_space(project_id)
        def create_project_space(project_id, path_to_project, path_to_source_project=None, await_import=True):
            api_instance = PySirius.ProjectSpacesApi()
            return api_instance.create_project_space(project_id, path_to_project, path_to_source_project=path_to_source_project, await_import=await_import)
        def get_project_space(project_id):
            api_instance = PySirius.ProjectSpacesApi()
            return api_instance.get_project_space(project_id)
        def get_project_spaces():
            api_instance = PySirius.ProjectSpacesApi()
            return api_instance.get_project_spaces()
        def open_project_space(project_id, path_to_project):
            api_instance = PySirius.ProjectSpacesApi()
            return api_instance.open_project_space(project_id, path_to_project)
    class VersionInfoControllerApi:
        def get_version_info():
            api_instance = PySirius.VersionInfoControllerApi()
            return api_instance.get_version_info()
    class Models:
        def Account_credentials(username=None, password=None, refresh_token=None):
            return PySirius.models.AccountCredentials(username=username, password=password, refresh_token=refresh_token)
        def Account_info(user_id=None, username=None, user_email=None, gravatar_url=None, subscriptions=None, active_subscription_id=None):
            return PySirius.models.AccountInfo(user_id=user_id, username=username, gravatar_url=gravatar_url, subscriptions=subscriptions, active_subscription_id=active_subscription_id)
        def AnnotatedPeak(mass=None, intensity=None, peak_annotation=None):
            return PySirius.models.AnnotatedPeak(mass=mass, intensity=intensity, peak_annotation=peak_annotation)
        def AnnotatedSpectrum(ms_level=None, collision_energy=None, peaks=None):
            return PySirius.models.AnnotatedSpectrum(ms_level=ms_level, collision_energy=collision_energy, peaks=peaks)
        def Canopus(enabled=None):
            return PySirius.models.Canopus(enabled=enabled)
        def CanopusPredictions(classy_fire_classes=None, npc_classes=None):
            return PySirius.models.CanopusPredictions(classy_fire_classes=classy_fire_classes, npc_classes=npc_classes)
        def CollisionEnergy(min_energy=None, max_energy=None, corrected=None):
            return PySirius.models.CollisionEnergy(min_energy=min_energy, max_energy=max_energy, corrected=corrected)
        def CompoundAnnotation(formula_annotation=None, structure_annotation=None, compound_class_annotation=None):
            return PySirius.models.CompoundAnnotation(formula_annotation=formula_annotation, structure_annotation=structure_annotation, compound_class_annotation=compound_class_annotation)
        def CompoundClass(Type=None, name=None, description=None, id=None, probability=None):
            return PySirius.models.CompoundClass(Type, name=name, description=description, id=id, probability=probability)
        def CompoundClasses(npc_pathway=None, npc_superclass=None, npc_class=None, classy_fire_most_specific=None, classy_fire_level5=None, classy_fire_class=None, classy_fire_sub_class=None, classy_fire_super_class=None):
            return PySirius.models.CompoundClass(npc_pathway=npc_pathway, npc_superclass=npc_superclass, npc_class=npc_class, classy_fire_most_specific=classy_fire_most_specific, classy_fire_level5=classy_fire_level5, classy_fire_class=classy_fire_class, classy_fire_sub_class=classy_fire_sub_class, classy_fire_super_class=classy_fire_super_class)
        def CompoundId(id=None, name=None, index=None, ion_mass=None, ion_type=None, rt_start_seconds=None, rt_end_seconds=None, top_annotation=None, ms_data=None, computing=None):
            return PySirius.models.CompoundId(id=id, name=name, index=index, ion_mass=ion_mass, ion_type=ion_type, rt_start_seconds=rt_start_seconds, rt_end_seconds=rt_end_seconds, top_annotation=top_annotation, ms_data=ms_data, computing=computing)
        def DBLink(name=None, id=None):
            return PySirius.models.DBLink(name=name, id=id)
        def Deviation(ppm=None, absolute=None, identifier=None):
            return PySirius.models.Deviation(ppm=ppm, absolute=absolute, identifier=identifier)
        def FingerprintPrediction(enabled=None, use_score_threshold=None):
            return PySirius.models.FingerprintPrediction(enabled=enabled, use_score_threshold=use_score_threshold)
        def FormulaCandidate(sirius_score=None, isotope_score=None, tree_score=None, zodiac_score=None, molecular_formula=None, adduct=None, num_ofexplained_peaks=None, num_ofexplainable_peaks=None, total_explained_intensity=None, median_mass_deviation=None):
            return PySirius.models.FormulaCandidate(sirius_score=sirius_score, isotope_score=isotope_score, tree_score=tree_score, zodiac_score=zodiac_score, molecular_formula=molecular_formula, num_ofexplainable_peaks=num_ofexplainable_peaks, total_explained_intensity=total_explained_intensity, median_mass_deviation=median_mass_deviation)
        def FormulaResultContainer(id=None, molecular_formula=None, adduct=None, result_overview=None, candidate=None):
            return PySirius.models.FormulaResultContainer(id=id, molecular_formula=molecular_formula, adduct=adduct, result_overview=result_overview, candidate=candidate)
        def FragmentNode(id=None, molecular_formula=None, ion_type=None, mass_deviation_da=None, mass_error_ppm=None, score=None, intensity=None, mz=None):
            return PySirius.models.FragmentNode(id=id, molecular_formula=molecular_formula, ion_type=ion_type, mass_deviation_da=mass_deviation_da, mass_error_ppm=mass_error_ppm, score=score, intensity=intensity, mz=mz)
        def FragmentationTree(fragments=None, losses=None, tree_score=None, root=None):
            return PySirius.models.FragmentationTree(fragments=fragments, losses=losses, tree_score=tree_score, root=root)
        def GuiParameters(selected_tab=None, cid=None, fid=None, structure_candidate_in_ch_i_key=None, bring_to_front=None):
            return PySirius.models.GuiParameters(selected_tab=selected_tab, cid=cid, fid=fid, structure_candidate_in_ch_i_key=structure_candidate_in_ch_i_key, bring_to_front=bring_to_front)
        def JobId(id=None, command=None, progress=None, affected_compound_ids=None):
            return PySirius.models.JobId(id=id, command=progress, affected_compound_ids=affected_compound_ids)
        def JobProgress(indeterminate=None, state=None, current_progress=None, max_progress=None, message=None, error_message=None):
            return PySirius.models.JobId(indeterminate=indeterminate, state=state, current_progress=current_progress, max_progress=max_progress, message=message, error_message=error_message)
        def JobSubmission(compound_ids=None, fallback_adducts=None, enforced_adducts=None, detectable_adducts=None, recompute=None, formula_id_paras=None, zodiac_paras=None, fingerprint_prediction_paras=None, structure_db_search_paras=None, canopus_paras=None, config_map=None):
            return PySirius.models.JobSubmission(compound_ids=compound_ids, fallback_adducts=fallback_adducts, enforced_adducts=enforced_adducts, detectable_adducts=detectable_adducts, recompute=recompute, formula_id_paras=formula_id_paras, zodiac_paras=zodiac_paras, fingerprint_prediction_paras=fingerprint_prediction_paras, structure_db_search_paras=structure_db_search_paras, canopus_paras=canopus_paras, config_map=config_map)
        def LossEdge(source_fragment=None, target_fragment=None, molecular_formula=None, score=None):
            return PySirius.models.LossEdge(source_fragment=source_fragment, target_fragment=target_fragment, molecular_formula=molecular_formula, score=score)
        def MsData(merged_ms1=None, merged_ms2=None, ms2_spectra=None, ms1_spectra=None):
            return PySirius.models.MsData(merged_ms1=merged_ms1, merged_ms2=merged_ms2, ms2_spectra=ms2_spectra, ms1_spectra=ms1_spectra)
        def PeakAnnotation():
            return PySirius.models.PeakAnnotation()
        def ProjectSpaceId(name=None, path=None):
            return PySirius.models.ProjectSpaceId(name=name, path=path)
        def ResultOverview(sirius_score=None, zodiac_score=None, top_csi_score=None, confidence_score=None, canopus_result=None):
            return PySirius.models.ResultOverview(sirius_score=sirius_score, zodiac_score=zodiac_score, top_csi_score=top_csi_score, confidence_score=confidence_score, canopus_result=canopus_result)
        def Sirius(enabled=None, profile=None, number_of_candidates=None, number_of_candidates_per_ion=None, mass_accuracy_ms2ppm=None, isotope_ms2_settings=None, formula_search_d_bs=None, enforced_formula_constraints=None, fallback_formula_constraints=None, detectable_elements=None, ilp_timeout=None, use_heuristic=None):
            return PySirius.models.Sirius(enabled=enabled, profile=profile, number_of_candidates=number_of_candidates, number_of_candidates_per_ion=number_of_candidates_per_ion, mass_accuracy_ms2ppm=mass_accuracy_ms2ppm, isotope_ms2_settings=isotope_ms2_settings, formula_search_d_bs=formula_search_d_bs, enforced_formula_constraints=enforced_formula_constraints, fallback_formula_constraints=fallback_formula_constraints, detectable_elements=detectable_elements, ilp_timeout=ilp_timeout, use_heuristic=use_heuristic)
        def StructureCandidate(structure_name=None, smiles=None, csi_score=None, tanimoto_similarity=None, confidence_score=None, num_of_pub_med_ids=None, xlog_p=None, inchi_key=None, fp_bits_set=None, db_links=None, pubmed_ids=None):
            return PySirius.models.StructureCandidate(structure_name=structure_name, smiles=smiles, csi_score=csi_score, tanimoto_similarity=tanimoto_similarity, confidence_score=confidence_score, num_of_pub_med_ids=num_of_pub_med_ids, xlog_p=xlog_p, inchi_key=inchi_key, fp_bits_set=fp_bits_set, db_links=db_links, pub_med_ids=pub_med_ids)
        def StructureDbSearch(enabled=None, structure_search_d_bs=None, tag_lipids=None):
            return PySirius.models.StructureDbSearch(enabled=enabled, structure_search_d_bs=structure_search_d_bs, tag_lipids=tag_lipids)
        def Subscription(sid=None, subscriber_id=None, subscriber_name=None, expiration_date=None, count_queries=None, compound_limit=None, compound_hash_recording_time=None, max_queries_per_compound=None, max_user_accounts=None, service_url=None, description=None, name=None, tos=None, pp=None):
            return PySirius.models.Subscription(sid=sid, subscriber_id=subscriber_id, subscriber_name=subscriber_name, expiration_date=expiration_date, count_queries=count_queries, compound_limit=compound_limit, compound_hash_recording_time=compound_hash_recording_time, max_queries_per_compound=max_queries_per_compound, max_user_accounts=max_user_accounts, service_url=service_url, description=description, name=name, tos=tos, pp=pp)
        def Timeout(number_of_seconds_per_decomposition=None, number_of_seconds_per_instance=None, identifier=None):
            return PySirius.models.Timeout(number_of_seconds_per_decomposition=number_of_seconds_per_decomposition, number_of_seconds_per_instance=number_of_seconds_per_instance, identifier=identifier)
        def UseHeuristic(mz_to_use_heuristic=None, mz_to_use_heuristic_only=None, identifier=None):
            return PySirius.models.UseHeuristic(mz_to_use_heuristic=mz_to_use_heuristic, mz_to_use_heuristic_only=mz_to_use_heuristic_only, identifier=identifier)
        def Zodiac(enabled=None, considered_candidates_at300_mz=None, considered_candidates_at800_mz=None, run_in_two_steps=None, edge_filter_thresholds=None, gibbs_sampler_parameters=None):
            return PySirius.models.Zodiac(enabled=enabled, considered_candidates_at300_mz=considered_candidates_at300_mz, considered_candidates_at800_mz=considered_candidates_at800_mz, run_in_two_steps=run_in_two_steps, edge_filter_thresholds=edge_filter_thresholds, gibbs_sampler_parameters=gibbs_sampler_parameters)
        def ZodiacEdgeFilterThresholds(threshold_filter=None, min_local_candidates=None, min_local_connections=None, identifier=None):
            return PySirius.models.ZodiacEdgeFilterThresholds(threshold_filter=threshold_filter, min_local_candidates=min_local_candidates, min_local_connections=min_local_connections, identifier=identifier)
        def ZodiacEpochs(iterations=None, burn_in_period=None, number_of_markov_chains=None, identifier=None):
            return PySirius.models.ZodiacEpochs(iterations=iterations, burn_in_period=burn_in_period, number_of_markov_chains=number_of_markov_chains, identifier=identifier)
        def ZodiacNumberOfConsideredCandidatesAt300Mz(value=None, identifier=None):
            return PySirius.models.ZodiacNumberOfConsideredCandidatesAt300Mz(value=value, identifier=identifier)
        def ZodiacNumberOfConsideredCandidatesAt800Mz(value=None, identifier=None):
            return PySirius.models.ZodiacNumberOfConsideredCandidatesAt800Mz(value=value, identifier=identifier)
        def ZodiacRunInTwoSteps(value=None, identifier=None):
            return PySirius.models.ZodiacRunInTwoSteps(value=value, identifier=identifier)