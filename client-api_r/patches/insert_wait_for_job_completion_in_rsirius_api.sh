#!/bin/bash

FILE="generated/R/rsirius_api.R"

# Remove the last 3 lines (closing braces)
head -n -3 "$FILE" > "${FILE}.tmp"

# Append the new function and closing braces
cat >> "${FILE}.tmp" << 'EOF'
    },

    wait_for_job_completion = function(project_id, job_id, timeout_in_sec=NULL) {
      if (inherits(project_id, "ProjectInfo")) {
        project_id <- project_id$projectId
      }
      if (inherits(job_id, "Job")) {
        job_id <- job_id$id
      }
      tryCatch({
        while (!(self$jobs_api$GetJob(project_id, job_id)$progress$state %in% c("CANCELED", "FAILED", "DONE"))) {
          Sys.sleep(1)
          if (inherits(timeout_in_sec, "numeric")) {
            timeout_in_sec <- timeout_in_sec - 1
            if (timeout_in_sec == 0) {
              return()
            }
          }
        }
      }, error = function(e){
        message('Caught an error!')
        message(e)
      }, warning = function(w){
        message('Caught an warning!')
        message(w)
      })
    }
  )
)
EOF

mv "${FILE}.tmp" "$FILE"

echo "Function appended successfully"