#' SIRIUS REST API Class
#'
#' This class \code{SiriusApi} is a subclass of \code{ApiClient}.
#' An object of this class represents a client object which handles the client-server communication.
#' It enables the possibility to start and to shutdown the server with the methods \code{start} and \code{shutdown}.
#'
#' TODO: Section 'Methods'
#'
#' @export
SiriusApi = R6::R6Class(
    classname = "SiriusApi",
    inherit = ApiClient,
    public = list(
        host = "http://localhost:",
        port = 8080,
        initialize = function(host = "http://localhost:",port = 8080, configuration = NULL, defaultHeaders = NULL){
            if(is.character(host) && length(host) == 1){
                if(is.numeric(port)){
                    self$port <- as.integer(port)
                    self$host <- host

                    basePath <- paste(self$host,self$port, sep = "")
                    super$initialize(basePath,configuration,defaultHeaders)
                }else{
                    stop("The given parameter \"port\" has to be an integer value.")
                }
            }else{
                stop("The given parameter \"host\" has to be a valid domain name.
                \"host\" has to be a character vector of length one.")
            }
        },
        start = function(pathToSirius, inputData, projectSpace = ""){
            if(all(is.character(pathToSirius),is.character(inputData),length(pathToSirius) == 1,length(inputData) == 1)){
                if(file.exists(pathToSirius) & !dir.exists(pathToSirius)){
                    if(file.exists(inputData)){
                        dir_sirius <- dirname(pathToSirius) # can be a (relative or absolute) directory path, or just "."
                        sirius <- basename(pathToSirius) # the file which has to be executed

                        # Change working directory to the directory which contains SIRIUS.
                        # This has to be done in the case that pathToSirius contains at least one whitespace.
                        wd <- getwd()
                        setwd(dir_sirius)

                        # It is also possible that inputData and projectSpace contain at least one whitespace:
                        sirius_call <- paste("./",sirius," --input=","\"",inputData,"\"", sep = "")

                        if(!missing(projectSpace)){
                            if(is.character(projectSpace) & length(projectSpace) == 1){
                                if(file.exists(projectSpace)){
                                    sirius_call <- paste(sirius_call," --project-space=","\"",projectSpace,"\"",sep = "")
                                }else{
                                    stop("The string \"projectSpace\" should represent a valid path to your project space.")
                                }
                            }else{
                                stop("The given parameter \"projectSpace\" has to be a character vector of length 1.")
                            }
                        }
                        sirius_call <- paste(sirius_call," asService -s --port=",self$port,sep = "")

                        # Call SIRIUS as background service in commando line:
                        system(sirius_call, wait = FALSE)
                        setwd(wd)
                    }else{
                        stop("The given string \"inputData\" should represent a valid path to the input.")
                    }
                }else{
                    stop("The given string \"pathToSirius\" should represent a valid path to the executable SIRIUS file.")
                }
            }else{
                stop("At least one of the parameters \"pathToSirius\" and \"inputData\" does not meet the requirements.
		            Both parameters \"pathToSirius\" and \"inputData\" have to be character vectors of length 1.")
            }
        },
        shutdown = function(){
            if(self$is_active()){
                httr::POST(paste(self$basePath,"/actuator/shutdown",sep = ""))
                print("The SIRIUS REST service ended successfully. ")
            }else{
                print("SIRIUS does not run as REST service at this moment.")
            }
        },
        is_active = function(){
            tryCatch(
            {
                resp <- httr::GET(paste(self$basePath,"/actuator/health", sep = ""))

                if(httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299){
                    content <- httr::content(resp)
                    if(content$status == "UP"){
                        return(TRUE)
                    }else{
                        return(FALSE)
                    }
                }else{
                    print("The request was not completely successfull.")
                    return(FALSE)
                }
            },error = function(e){
                return(FALSE)
            })
        },
	# create CompoundsApi subclass   
	CompoundsApi = R6::R6Class(
    		classname = "CompoundsApi",
		inherit = SiriusApi,
		public = list(
			delete_compound = function(project_id, compound_id){
				api_instance <- CompoundsApi$new()
				return(api_instance$delete_compound(project_id, compound_id))
			},	
			get_compound = function(project_id, compound_id, top_annotation = FALSE, ms_data = FALSE){
				api_instance <- CompoundsApi$new()
				return(api_instance$get_compound(project_id, compound_id, top_annotation=top_annotation, ms_data=ms_data))
			},	
			get_compounds = function(project_id, top_annotation = FALSE, ms_data = FALSE){
				api_instance <- CompoundsApi$new()
				return(api_instance$get_compounds(project_id, top_annotation=top_annotation, ms_data=ms_data))
			},	
			import_compounds = function(body, project_id, align_lcms_runs = FALSE, allow_ms1_only_data = True, ignore_formulas = FALSE){
				api_instance <- CompoundsApi$new()
				return(api_instance$import_compounds(body, project_id=project_id, align_lcms_runs=align_lcms_runs, allow_ms1_only_data=allow_ms1_only_data, ignore_formulas=ignore_formulas))
			},
			import_compounds_from_string = function(body, data_format, project_id, source_name=none){
				api_instance <- CompoundsApi$new()
				return(api_instance$import_compounds_from_string(body, data_format, project_id, source_name=source_name))
			},
		)
	),
	# create ComputationsApi subclass
	ComputationsApi = R6::R6Class(
    		classname = "ComputationsApi",
		inherit = SiriusApi,
		public = list(
			delete_job = function(project_id, job_id, cancel_if_running=TRUE, await_deletion=TRUE){
				api_instance <- ComputationsApi$new()
				return(api_instance$delete_job(project_id, job_id, cancel_if_running=cancel_if_running, await_deletion=await_deletion))
			},
			delete_job_config = function(name){
				api_instance <- ComputationsApi$new()
				return(api_instance$delete_job(name))
			},
			get_default_job_config = function(){
				api_instance <- ComputationsApi$new()
				return(api_instance$get_default_job_config())
			},
			get_job = function(project_id, job_id, include_state=TRUE, include_command=FALSE, include_affected_compounds=FALSE){
				api_instance <- ComputationsApi$new()
				return(api_instance$get_job(project_id, job_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds))
			},
			get_job_config = function(name, include_config_map=FALSE){
				api_instance <- ComputationsApi$new()
				return(api_instance$get_job_config(name, include_config_map=include_config_map))
			},
			get_job_configs = function(include_config_map=FALSE){
				api_instance <- ComputationsApi$new()
				return(api_instance$get_job_configs(include_config_map=include_config_map))
			},
			get_jobs = function(project_id, include_state=False, include_command=False, include_affected_compounds=FALSE){
				api_instance <- ComputationsApi$new()
				return(api_instance$get_jobs(project_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds))
			},
			post_job_config = function(body, name, override_existing=FALSE){
				api_instance <- ComputationsApi$new()
				return(api_instance$post_job_config(body, name, override_existing=override_existing))
			},
			start_job = function(body, project_id, include_state=TRUE, include_command=TRUE, include_affected_compounds=FALSE){
				api_instance <- ComputationsApi$new()
				return(api_instance$start_job(body, project_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds))
			},
			start_job_from_config = function(body, job_config_name, project_id, recompute=TRUE, include_state=TRUE, include_command=TRUE, include_affected_compounds=FALSE){
				api_instance <- ComputationsApi$new()
				return(api_instance$start_job_from_config(body, job_config_name, project_id, recompute=recompute, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds))
			}
		)
	),
	# create FormulaResultsApi subclass    
	FormulaResultsApi = R6::R6Class(
    		classname = "FormulaResultsApi",
		inherit = SiriusApi,
		public = list(
			get_best_matching_canopus_predictions = function(project_id, compound_id, formula_id){
				api_instance <- FormulaResultsApi$new()
				return(api_instance$get_best_matching_canopus_predictions(project_id, compound_id, formula_id))
			}
			get_canopus_predictions = function(project_id, compound_id, formula_id){
				api_instance <- FormulaResultsApi$new()
				return(api_instance$get_canopus_predictions(project_id, compound_id, formula_id))
			}
			get_fingerprint_prediction = function(project_id, compound_id, formula_id){
				api_instance <- FormulaResultsApi$new()
				return(api_instance$get_fingerprint_prediction(project_id, compound_id, formula_id))
			}
			get_formula_ids = function(project_id, compound_id, result_overview=TRUE, formula_candidate=FALSE){
				api_instance <- FormulaResultsApi$new()
				return(api_instance$get_formula_ids(project_id, compound_id, result_overview=result_overview, formula_candidate=formula_candidate))
			}
			get_formula_result = function(project_id, compound_id, formula_id, result_overview=TRUE, formula_candidate=FALSE){
				api_instance <- FormulaResultsApi$new()
				return(api_instance$get_formula_result(project_id, compound_id, formula_id, result_overview=result_overview, formula_candidate=formula_candidate))
			}
			get_frag_tree = function(project_id, compound_id, formula_id){
				api_instance <- FormulaResultsApi$new()
				return(api_instance$get_frag_tree(project_id, compound_id, formula_id))
			}
			get_simulated_isotope_pattern = function(project_id, compound_id, formula_id){
				api_instance <- FormulaResultsApi$new()
				return(api_instance$get_simulated_isotope_pattern(project_id, compound_id, formula_id))
			}
			get_structure_candidates = function(project_id, compound_id, formula_id, fingerprint=FALSE, db_links=FALSE, pub_med_ids=FALSE, top_k=-1){
				api_instance <- FormulaResultsApi$new()
				return(api_instance$get_structure_candidates(project_id, compound_id, formula_id, fingerprint=fingerprint, db_links=db_links, pub_med_ids=pub_med_ids, top_k=top_k))
			}
			get_top_structure_candidate = function(project_id, compound_id, fingerprint=FALSE, db_links=FALSE, pub_med_ids=FALSE){
				api_instance <- FormulaResultsApi$new()
				return(api_instance$get_top_structure_candidate(project_id, compound_id, fingerprint=fingerprint, db_links=db_links, pub_med_ids=pub_med_ids))
			}
		)
	)
	# create FormulaResultsApi subclass    
	GraphicalUserInterfaceApi = R6::R6Class(
    		classname = "GraphicalUserInterfaceApi",
		inherit = SiriusApi,
		public = list(
			apply_to_gui = function(body, project_id){
				api_instance <- GraphicalUserInterfaceApi$new()
				return(api_instance$apply_to_gui(body, project_id))
			}
			close_gui = function(project_id){
				api_instance <- GraphicalUserInterfaceApi$new()
				return(api_instance$close_gui(project_id))
			}
			open_gui = function(project_id, read_only=TRUE){
				api_instance <- GraphicalUserInterfaceApi$new()
				return(api_instance$open_gui(project_id, read_only=read_only))
			}
		)
	)
	# create LoginAndAccountApi subclass    
	LoginAndAccountApi = R6::R6Class(
    		classname = "LoginAndAccountApi",
		inherit = SiriusApi,
		public = list(
			get_account_info = function(include_subs=FALSE){
				api_instance <- LoginAndAccountApi$new()
				return(api_instance$get_account_info(include_subs=include_subs))
			}
			get_sign_up_url = function(){
				api_instance <- LoginAndAccountApi$new()
				return(api_instance$get_sign_up_url())
			}
			get_subscriptions = function(){
				api_instance <- LoginAndAccountApi$new()
				return(api_instance$get_subscriptions())
			}
			is_logged_in = function(){
				api_instance <- LoginAndAccountApi$new()
				return(api_instance$is_logged_in())
			}
			login = function(body, accept_terms=TRUE, fail_when_logged_in=FALSE, include_subs=FALSE){
				api_instance <- LoginAndAccountApi$new()
				return(api_instance$login(body, accept_terms=accept_terms, fail_when_logged_in=fail_when_logged_in, include_subs=include_subs))
			}
			logout = function(){
				api_instance <- LoginAndAccountApi$new()
				return(api_instance$logout())
			}
			sign_up = function(){
				api_instance <- LoginAndAccountApi$new()
				return(api_instance$sign_up())
			}
		)
	)
	# create ProjectSpacesApi subclass    
	ProjectSpacesApi = R6::R6Class(
    		classname = "ProjectSpacesApi",
		inherit = SiriusApi,
		public = list(
			close_project_space = function(project_id){
				api_instance <- ProjectSpacesApi$new()
				return(api_instance$close_project_space(project_id))
			}
			create_project_space = function(project_id, path_to_project, path_to_source_project=NULL, await_import=TRUE){
				api_instance <- ProjectSpacesApi$new()
				return(api_instance$create_project_space(project_id, path_to_project, path_to_source_project=path_to_source_project, await_import=await_import))
			}
			get_project_space = function(project_id){
				api_instance <- ProjectSpacesApi$new()
				return(api_instance$get_project_space(project_id))
			}
			get_project_spaces = function(){
				api_instance <- ProjectSpacesApi$new()
				return(api_instance$get_project_spaces())
			}
			open_project_space = function(project_id, path_to_project){
				api_instance <- ProjectSpacesApi$new()
				return(api_instance$open_project_space(project_id, path_to_project))
			}
		)
	)
	# create VersionInfoControllerApi subclass    
	VersionInfoControllerApi = R6::R6Class(
    		classname = "VersionInfoControllerApi",
		inherit = SiriusApi,
		public = list(
			get_version_info = function(){
				api_instance <- VersionInfoControllerApi$new()
				return(api_instance$get_version_info())
			}
		)
	)
	# create VersionInfoControllerApi subclass    
	Models = R6::R6Class(
    		classname = "VersionInfoControllerApi",
		inherit = SiriusApi,
		public = list(
			AccountCredentials = function(username=NULL, password=NULL, refresh_token=NULL){
				return(Account_credentials$new(username=username, password=password, refresh_token=refresh_token))
			}
			AccountInfo = function(user_id=NULL, username=NULL, user_email=NULL, gravatar_url=NULL, subscriptions=NULL, active_subscription_id=NULL){
				return(AccountInfo$new(user_id=user_id, username=username, gravatar_url=gravatar_url, subscriptions=subscriptions, active_subscription_id=active_subscription_id))
			}
			AnnotatedPeak = function(mass=NULL, intensity=NULL, peak_annotation=NULL){
				return(AnnotatedPeak$new(mass=mass, intensity=intensity, peak_annotation=peak_annotation))
			}
			AnnotatedSpectrum = function(ms_level=NULL, collision_energy=NULL, peaks=NULL){
				return(AnnotatedSpectrum$new(ms_level=ms_level, collision_energy=collision_energy, peaks=peaks))
			}
			Canopus = function(enabled=NULL){
				return(Canopus$new(enabled=enabled))
			}
			CanopusPredictions = function(classy_fire_classes=NULL, npc_classes=NULL){
				return(CanopusPredictions$new(classy_fire_classes=classy_fire_classes, npc_classes=npc_classes))
			}
			CollisionEnergy = function(min_energy=NULL, max_energy=NULL, corrected=NULL){
				return(CollisionEnergy$new(min_energy=min_energy, max_energy=max_energy, corrected=corrected))
			}
			CompoundAnnotation = function(formula_annotation=NULL, structure_annotation=NULL, compound_class_annotation=NULL){
				return(CompoundAnnotation$new(formula_annotation=formula_annotation, structure_annotation=structure_annotation, compound_class_annotation=compound_class_annotation))
			}
			CompoundClass = function(Type=NULL, name=NULL, description=NULL, id=NULL, probability=NULL){
				return(CompoundClass$new(Type, name=name, description=description, id=id, probability=probability))
			}
			CompoundClasses = function(npc_pathway=NULL, npc_superclass=NULL, npc_class=NULL, classy_fire_most_specific=NULL, classy_fire_level5=NULL, classy_fire_class=NULL, classy_fire_sub_class=NULL, classy_fire_super_class=NULL){
				return(CompoundClasses$new(npc_pathway=npc_pathway, npc_superclass=npc_superclass, npc_class=npc_class, classy_fire_most_specific=classy_fire_most_specific, classy_fire_level5=classy_fire_level5, classy_fire_class=classy_fire_class, classy_fire_sub_class=classy_fire_sub_class, classy_fire_super_class=classy_fire_super_class))
			}
			CompoundId = function(id=NULL, name=NULL, index=NULL, ion_mass=NULL, ion_type=NULL, rt_start_seconds=NULL, rt_end_seconds=NULL, top_annotation=NULL, ms_data=NULL, computing=NULL){
				return(CompoundId$new(id=id, name=name, index=index, ion_mass=ion_mass, ion_type=ion_type, rt_start_seconds=rt_start_seconds, rt_end_seconds=rt_end_seconds, top_annotation=top_annotation, ms_data=ms_data, computing=computing))
			}
			DBLink = function(name=NULL, id=NULL){
				return(DBLink$new(name=NULL, id=NULL))
			}
			Deviation = function(ppm=NULL, absolute=NULL, identifier=NULL){
				return(Deviation$new(ppm=ppm, absolute=absolute, identifier=identifier))
			}
			FingerprintPrediction = function(enabled=NULL, use_score_threshold=NULL){
				return(FingerprintPrediction$new(enabled=enabled, use_score_threshold=use_score_threshold))
			}
			FormulaCandidate = function(sirius_score=NULL, isotope_score=NULL, tree_score=NULL, zodiac_score=NULL, molecular_formula=NULL, adduct=NULL, num_ofexplained_peaks=NULL, num_ofexplainable_peaks=NULL, total_explained_intensity=NULL, median_mass_deviation=NULL){
				return(FormulaCandidate$new(sirius_score=sirius_score, isotope_score=isotope_score, tree_score=tree_score, zodiac_score=zodiac_score, molecular_formula=molecular_formula, num_ofexplainable_peaks=num_ofexplainable_peaks, total_explained_intensity=total_explained_intensity, median_mass_deviation=median_mass_deviation))
			}
			FormulaResultContainer = function(id=NULL, molecular_formula=NULL, adduct=NULL, result_overview=NULL, candidate=NULL){
				return(FormulaResultContainer$new(id=id, molecular_formula=molecular_formula, adduct=adduct, result_overview=result_overview, candidate=candidate))
			}
			FragmentNode = function(id=NULL, molecular_formula=NULL, ion_type=NULL, mass_deviation_da=NULL, mass_error_ppm=NULL, score=NULL, intensity=NULL, mz=NULL){
				return(FragmentNode$new(id=id, molecular_formula=molecular_formula, ion_type=ion_type, mass_deviation_da=mass_deviation_da, mass_error_ppm=mass_error_ppm, score=score, intensity=intensity, mz=mz))
			}
			FragmentationTree = function(fragments=NULL, losses=NULL, tree_score=NULL, root=NULL){
				return(FragmentationTree$new(fragments=fragments, losses=losses, tree_score=tree_score, root=root))
			}
			GuiParameters = function(selected_tab=NULL, cid=NULL, fid=NULL, structure_candidate_in_ch_i_key=NULL, bring_to_front=NULL){
				return(GuiParameters$new(selected_tab=selected_tab, cid=cid, fid=fid, structure_candidate_in_ch_i_key=structure_candidate_in_ch_i_key, bring_to_front=bring_to_front))
			}
			JobId = function(id=NULL, command=NULL, progress=NULL, affected_compound_ids=NULL){
				return(JobId$new(id=id, command=progress, affected_compound_ids=affected_compound_ids))
			}
			JobProgress = function(indeterminate=NULL, state=NULL, current_progress=NULL, max_progress=NULL, message=NULL, error_message=NULL){
				return(JobProgress$new(indeterminate=indeterminate, state=state, current_progress=current_progress, max_progress=max_progress, message=message, error_message=error_message))
			}
			JobSubmission = function(compound_ids=NULL, fallback_adducts=NULL, enforced_adducts=NULL, detectable_adducts=NULL, recompute=NULL, formula_id_paras=NULL, zodiac_paras=NULL, fingerprint_prediction_paras=NULL, structure_db_search_paras=NULL, canopus_paras=NULL, config_map=NULL){
				return(JobSubmission$new(compound_ids=compound_ids, fallback_adducts=fallback_adducts, enforced_adducts=enforced_adducts, detectable_adducts=detectable_adducts, recompute=recompute, formula_id_paras=formula_id_paras, zodiac_paras=zodiac_paras, fingerprint_prediction_paras=fingerprint_prediction_paras, structure_db_search_paras=structure_db_search_paras, canopus_paras=canopus_paras, config_map=config_map))
			}
			LossEdge = function(source_fragment=NULL, target_fragment=NULL, molecular_formula=NULL, score=NULL){
				return(LossEdge$new(source_fragment=source_fragment, target_fragment=target_fragment, molecular_formula=molecular_formula, score=score))
			}
			MsData = function(merged_ms1=NULL, merged_ms2=NULL, ms2_spectra=NULL, ms1_spectra=NULL){
				return(MsData$new(merged_ms1=merged_ms1, merged_ms2=merged_ms2, ms2_spectra=ms2_spectra, ms1_spectra=ms1_spectra))
			}
			PeakAnnotation = function(){
				return(PeakAnnotation$new())
			}
			ProjectSpaceId = function(name=NULL, path=NULL){
				return(ProjectSpaceId$new(name=name, path=path))
			}
			ResultOverview = function(sirius_score=NULL, zodiac_score=NULL, top_csi_score=NULL, confidence_score=NULL, canopus_result=NULL){
				return(ResultOverview$new(sirius_score=sirius_score, zodiac_score=zodiac_score, top_csi_score=top_csi_score, confidence_score=confidence_score, canopus_result=canopus_result))
			}
			Sirius = function(enabled=NULL, profile=NULL, number_of_candidates=NULL, number_of_candidates_per_ion=NULL, mass_accuracy_ms2ppm=NULL, isotope_ms2_settings=NULL, formula_search_d_bs=NULL, enforced_formula_constraints=NULL, fallback_formula_constraints=NULL, detectable_elements=NULL, ilp_timeout=NULL, use_heuristic=NULL){
				return(Sirius$new(enabled=enabled, profile=profile, number_of_candidates=number_of_candidates, number_of_candidates_per_ion=number_of_candidates_per_ion, mass_accuracy_ms2ppm=mass_accuracy_ms2ppm, isotope_ms2_settings=isotope_ms2_settings, formula_search_d_bs=formula_search_d_bs, enforced_formula_constraints=enforced_formula_constraints, fallback_formula_constraints=fallback_formula_constraints, detectable_elements=detectable_elements, ilp_timeout=ilp_timeout, use_heuristic=use_heuristic))
			}
			StructureCandidate = function(structure_name=NULL, smiles=NULL, csi_score=NULL, tanimoto_similarity=NULL, confidence_score=NULL, num_of_pub_med_ids=NULL, xlog_p=NULL, inchi_key=NULL, fp_bits_set=NULL, db_links=NULL, pubmed_ids=NULL){
				return(StructureCandidate$new(structure_name=structure_name, smiles=smiles, csi_score=csi_score, tanimoto_similarity=tanimoto_similarity, confidence_score=confidence_score, num_of_pub_med_ids=num_of_pub_med_ids, xlog_p=xlog_p, inchi_key=inchi_key, fp_bits_set=fp_bits_set, db_links=db_links, pub_med_ids=pub_med_ids))
			}
			StructureDbSearch = function(enabled=NULL, structure_search_d_bs=NULL, tag_lipids=NULL){
				return(StructureDbSearch$new(enabled=enabled, structure_search_d_bs=structure_search_d_bs, tag_lipids=tag_lipids))
			}
			Subscription = function(sid=NULL, subscriber_id=NULL, subscriber_name=NULL, expiration_date=NULL, count_queries=NULL, compound_limit=NULL, compound_hash_recording_time=NULL, max_queries_per_compound=NULL, max_user_accounts=NULL, service_url=NULL, description=NULL, name=NULL, tos=NULL, pp=NULL){
				return(Subscription$new(sid=sid, subscriber_id=subscriber_id, subscriber_name=subscriber_name, expiration_date=expiration_date, count_queries=count_queries, compound_limit=compound_limit, compound_hash_recording_time=compound_hash_recording_time, max_queries_per_compound=max_queries_per_compound, max_user_accounts=max_user_accounts, service_url=service_url, description=description, name=name, tos=tos, pp=pp))
			}
			Timeout = function(number_of_seconds_per_decomposition=NULL, number_of_seconds_per_instance=NULL, identifier=NULL){
				return(Timeout$new(number_of_seconds_per_decomposition=number_of_seconds_per_decomposition, number_of_seconds_per_instance=number_of_seconds_per_instance, identifier=identifier))
			}
			UseHeuristic = function(mz_to_use_heuristic=NULL, mz_to_use_heuristic_only=NULL, identifier=NULL){
				return(UseHeuristic$new(mz_to_use_heuristic=mz_to_use_heuristic, mz_to_use_heuristic_only=mz_to_use_heuristic_only, identifier=identifier))
			}
			Zodiac = function(enabled=NULL, considered_candidates_at300_mz=NULL, considered_candidates_at800_mz=NULL, run_in_two_steps=NULL, edge_filter_thresholds=NULL, gibbs_sampler_parameters=NULL){
				return(Zodiac$new(enabled=enabled, considered_candidates_at300_mz=considered_candidates_at300_mz, considered_candidates_at800_mz=considered_candidates_at800_mz, run_in_two_steps=run_in_two_steps, edge_filter_thresholds=edge_filter_thresholds, gibbs_sampler_parameters=gibbs_sampler_parameters))
			}
			ZodiacEdgeFilterThresholds = function(threshold_filter=NULL, min_local_candidates=NULL, min_local_connections=NULL, identifier=NULL){
				return(ZodiacEdgeFilterThresholds$new(threshold_filter=threshold_filter, min_local_candidates=min_local_candidates, min_local_connections=min_local_connections, identifier=identifier))
			}
			ZodiacEpochs = function(iterations=NULL, burn_in_period=NULL, number_of_markov_chains=NULL, identifier=NULL){
				return(ZodiacEpochs$new(iterations=iterations, burn_in_period=burn_in_period, number_of_markov_chains=number_of_markov_chains, identifier=identifier))
			}
			ZodiacNumberOfConsideredCandidatesAt300Mz = function(value=NULL, identifier=NULL){
				return(ZodiacNumberOfConsideredCandidatesAt300Mz$new(value=value, identifier=identifier))
			}
			ZodiacNumberOfConsideredCandidatesAt800Mz = function(value=NULL, identifier=NULL){
				return(ZodiacNumberOfConsideredCandidatesAt800Mz$new(value=value, identifier=identifier))
			}
			ZodiacRunInTwoSteps = function(value=NULL, identifier=NULL){
				return(ZodiacRunInTwoSteps$new(value=value, identifier=identifier))
			}
		)
	)
    )
)
				
				

				


