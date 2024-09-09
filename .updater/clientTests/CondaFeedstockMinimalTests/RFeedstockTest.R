options(error = traceback)

library('Rsirius')

sdk <- SiriusSDK$new()
sirius_api <- sdk$attach_or_start_sirius()

wait_for_job <- function(project_id, job) {
  while (sirius_api$jobs_api$GetJob(project_id, job$id)$progress$state != "DONE") {
    Sys.sleep(1)
  }
}

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
wait_for_job(project_id, job)

aligned_feature_id <- sirius_api$features_api$GetAlignedFeatures(project_id)[[1]]$alignedFeatureId
formula_id <- sirius_api$features_api$GetFormulaCandidates(project_id, aligned_feature_id)[[1]]$formulaId
tree <- sirius_api$features_api$GetFragTree(project_id, aligned_feature_id, formula_id)
write(tree$toJSONString(), "test_fragtree.json")

sirius_api$projects_api$CloseProjectSpace(project_id)
unlink(project_dir, recursive=TRUE)
sdk$shutdown_sirius()