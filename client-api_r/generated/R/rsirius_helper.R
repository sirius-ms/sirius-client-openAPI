Helper <- R6::R6Class(
  "Helper",
  public = list(
    wait_for_job_completion = function(project_id, job_id, jobs_api) {
      .Deprecated("rsirius_api$wait_for_job_completion")
      if (inherits(jobs_api, "rsirius_api")) {
        jobs_api <- jobs_api$jobs_api
      }
      if (inherits(project_id, "ProjectInfo")) {
        project_id <- project_id$projectId
      }
      if (inherits(job_id, "Job")) {
        job_id <- job_id$id
      }
      while (!(jobs_api$GetJob(project_id, job_id)$progress$state %in% c("CANCELED", "FAILED", "DONE"))) {
        Sys.sleep(1)
      }
    }
  )
)
