options(error = traceback)

library('RSirius')

sdk <- SiriusSDK$new()
sirius_api <- sdk$attach_or_start_sirius()

project_id <- "test_project"
project_dir <- paste(Sys.getenv('SRC_DIR'), project_id, sep="/")
sirius_api$projects_api$CreateProjectSpace(project_id, project_dir)

data <- file.path(Sys.getenv('SRC_DIR'),"Kaempferol.ms")
sirius_api$projects_api$ImportPreprocessedData(project_id, input_files=data)

job_submission <- sirius_api$jobs_api$GetDefaultJobConfig()
job_submission$spectraSearchParams$enabled <- FALSE
job_submission$formulaIdParams$enabled <- TRUE
job_submission$fingerprintPredictionParams$enabled <- FALSE
job_submission$structureDbSearchParams$enabled <- FALSE
job_submission$canopusParams$enabled <- FALSE
job_submission$msNovelistParams$enabled <- FALSE

job <- sirius_api$jobs_api$StartJob(project_id, job_submission)
Helper$new()$wait_for_job_completion(project_id, job$id, sirius_api$jobs_api)

aligned_feature_id <- sirius_api$features_api$GetAlignedFeatures(project_id)[[1]]$alignedFeatureId
formula_id <- sirius_api$features_api$GetAlignedFeature(project_id, aligned_feature_id, opt_fields = list("topAnnotations"))$topAnnotations$formulaAnnotation$formulaId
tree <- sirius_api$features_api$GetFragTree(project_id, aligned_feature_id, formula_id)
write(tree$toJSONString(), "test_fragtree.json")

sirius_api$projects_api$CloseProjectSpace(project_id)
unlink(project_dir, recursive=TRUE)
sdk$shutdown_sirius()