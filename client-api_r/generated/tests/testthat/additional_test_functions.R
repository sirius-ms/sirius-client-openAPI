# wait for job to finish
wait_for_job <- function(pid, job) {
  while (!(ComputationsApi$new()$GetJob(pid, job$id)$progress$state == "DONE")) {
    Sys.sleep(1)
  }
}
  
# create new project space with specified id and directory
new_ps <- function(id, dir) {
  ProjectSpacesApi$new()$CreateProjectSpace(id, dir)
  return (c(id, dir))
}

# specify total path to project space directory for deletion using unlink
total_dir <- function(dir) {
  return (paste0("~/work/sirius-client-openAPI/sirius-client-openAPI/", dir))
}

# close and delete project space
project_spaces_td <- function(pid_dir) {
  ProjectSpacesApi$new()$CloseProjectSpace(pid_dir[1])
  unlink(total_dir(pid_dir[2]), recursive = TRUE)
}

# teardown for compounds_api test
compounds_td <- function(pid_dir) {
  CompoundsApi$new()$DeleteCompound(pid_dir[1], "1_Bicuculline_Bicuculline")
  CompoundsApi$new()$DeleteCompound(pid_dir[1], "2_Kaempferol_Kaempferol")
  project_spaces_td(pid_dir) 
}

# teardown for computations_api test
computations_td <- function(pid_dir) {
   project_spaces_td(pid_dir)
}

# teardown for formula_results test
formula_results_td <- function(pid_dir) {
   CompoundsApi$new()$DeleteCompound(pid_dir[1], "1_Bicuculline_Bicuculline")
   project_spaces_td(pid_dir)
}
