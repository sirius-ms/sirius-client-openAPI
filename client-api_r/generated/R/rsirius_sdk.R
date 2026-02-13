SiriusSDK <- R6::R6Class(
  "SiriusSDK",
  public = list(
    port = NULL,
    host = NULL,
    sirius_path = NULL,
    projectspace = NULL,
    workspace = NULL,
    process = NULL,
    process_id = NULL,
    api_client = NULL,
    run_command = NULL,
    run_args = NULL,

    reset_sdk_class = function() {
      self$port <- NULL
      self$host <- NULL
      self$sirius_path <- NULL
      self$projectspace <- NULL
      self$workspace <- NULL
      self$process <- NULL
      self$process_id <- NULL
      self$api_client <- NULL
      self$run_command <- NULL
      self$run_args <- NULL
    },

    reset_sdk_process = function() {
      self$process <- NULL
      self$process_id <- NULL
    },

    connect = function(url) {
      self$host <- url
      self$api_client <- RSirius::ApiClient$new(self$host)
      return(RSirius::rsirius_api$new(self$api_client))
    },

    reconnect = function() {
      if (!is.null(self$api_client) && !is.null(self$process) && self$process$is_alive()) {
        return(RSirius::rsirius_api(self$api_client))
      }
      cat("Cannot reconnect, api_client and/or process are NULL or process has terminated.\n")
      return()
    },

    restart_sirius = function() {
      if (!is.null(self$run_command) && !is.null(self$run_args) && !is.null(self$process) && !is.null(self$api_client)) {
        if (inherits(self$shutdown_sirius(), "logical")) {
          cat("Shutdown seems to have gone wrong, aborting restart...\n")
          return()
        }

        self$process <- processx::process$new(command = self$run_command, args = self$run_args)
        for (i in 1:60) {
          Sys.sleep(1)
          tryCatch({
            if (self$process$is_alive()) {
              found <- private$cycle_find_sirius_pid_and_port()
              if (!found) {
                cat("Could not find sirius.port file. Please terminate SIRIUS if needed and try specifying a port\n")
                cat("Alternatively, try attaching to a running SIRIUS instance with attach_to_running_sirius()\n")
                return()
              }
              # connect() sets self$host and self$api_client
              host <- paste0('http://localhost:', self$port)
              sirius_api <- self$connect(host)
              return(sirius_api)
            } else {
              cat("The SIRIUS process seems to have exited during startup. Please investigate this error.\n")
              self$reset_sdk_class()
            }
          }, error = function(e) {
            cat(e$message, "\n")
          })
        }

        cat("SIRIUS seems to have problems starting. Resetting SiriusSDK...\n")
        self$reset_sdk_class()
        return()
      }
      cat("Could not attempt REST restart, run_command, run_args, process or api_client are NULL.\n")
      return()
    },

    attach_or_start_sirius = function(headless = NULL) {
      sirius_api <- self$attach_to_sirius()
      # attachment encountered issue
      if (is.logical(sirius_api)) {
        return()
      }
      # attachment did not encounter issue but also found no SIRIUS
      else if (is.null(sirius_api)) {
        sirius_api <- self$start_sirius(headless = headless)
      }
      # attachment successful
      else {
         message("Attached to running SIRIUS instance.")
      }
      return(sirius_api)
    },

    attach_to_sirius = function(sirius_major_version = NULL, sirius_port = NULL) {

      # check if connection to API client is possible
      if (!is.null(self$api_client)) {
        tryCatch({
          if (RSirius::ActuatorApi$new(self$api_client)$Health()$status == "UP") {
            return(RSirius::rsirius_api$new(self$api_client))
          }
        }, error = function(e) {
          message("Found existing API Client, but could not reach API.")
        })
      }

      # create and check API client from existing port
      if (!is.null(self$port)) {
        self$host <- paste0('http://localhost:', self$port)
        sirius_api <- self$connect(self$host)
        self$api_client <- sirius_api$api_client
        tryCatch({
          if (RSirius::ActuatorApi$new(self$api_client)$Health()$status == "UP") {
            return(RSirius::rsirius_api$new(self$api_client))
          }
        }, error = function(e) {
          message("Found existing port, but could not reach API under this port.")
        })
      }

      # if client is not reachable, search for process and kill if necessary
      if (!is.null(self$process)) {
        if (self$process$is_alive()) {
          message("The SIRIUS process still seems to be lingering, but no connection could be made to the API.")
          message("Shutting down the process...")
          if (inherits(self$shutdown_sirius(), "logical")) {
            # before error messages will be done by shutdown function
            message("Aborting....")
            return(FALSE)
          }
          message("Process shut down successfully.")
        } else {
          message("Known process seems to have terminated at some time.")
        }
      }

      self$reset_sdk_class()
      message("SiriusSDK has been reset. Continuing with search for new SIRIUS instance...")

      if (!is.null(sirius_port)) {
        self$port <- sirius_port
      } else {
        found <- private$find_sirius_pid_and_port(sirius_major_version)
        if (!found) {
          message("No port file matching ~/.sirius/sirius-X.X.port was found.")
          message("Please try providing the port.")
          return()
        }
      }

      self$host <- paste0('http://localhost:', self$port)
      sirius_api <- self$connect(self$host)
      self$api_client <- sirius_api$api_client

      tryCatch({
        if (RSirius::ActuatorApi$new(self$api_client)$Health()$status == "UP") {
            return(RSirius::rsirius_api$new(self$api_client))
        }
      }, error = function(e) {
        message("Created API client from process_id and port, but could not reach API.")
      })

      message("Files for SIRIUS process_id and port have been found, but do not belong to an alive API.")
      message("Process_id and port files will be deleted and start_sirius will be called.")
      private$delete_sirius_pid_and_port(sirius_major_version)
      self$reset_sdk_class()

      return()
    },

    start_sirius = function(sirius_path = NULL, port = NULL, projectspace = NULL, workspace = NULL, forceStart = FALSE, headless = NULL) {
      if (!is.null(self$process) && !forceStart) {
        cat("Sirius seems to have already been started with PID:", self$process$get_pid(), ".\n")
        cat("Use reconnect() to get a new API instance for your current SIRIUS.\n")
        cat("Use shutdown_sirius() and then start_sirius() to restart SIRIUS and get a new API instance.\n")
        cat("If you are sure the process is not running anymore, use reset_sdk_process() or reset the complete SDK using reset_sdk_class() before calling start() again.\n")
        cat("[NOT RECOMMENDED] Use start with forceStart=TRUE to skip this warning and start a second service.\n")
        return()
      }

      self$workspace <- workspace

      if (!is.null(sirius_path)) {
        if (!file.exists(sirius_path)) {
          cat("Wrong path to executable.\n")
          self$reset_sdk_class()
          return()
        }
        self$sirius_path <- normalizePath(sirius_path)
      } else {
        if (Sys.getenv("PATH") == "" || !grepl("sirius", Sys.getenv("PATH"))) {
          cat("Please provide a path to the sirius executable if not declared in PATH!\n")
          self$reset_sdk_class()
          return()
        }
        cat("Found SIRIUS in PATH! Using this information to start the application.\n")
        self$sirius_path <- 'sirius'
      }

      if (!is.null(projectspace)) {
        if (!file.exists(projectspace)) {
          cat("Wrong path to project space.\n")
          self$reset_sdk_class()
          return()
        }
        self$projectspace <- normalizePath(projectspace)
        run_args <- c("--output", self$projectspace, "REST", "-s")
      } else {
        run_args <- c("REST", "-s")
      }

      if (!is.null(workspace)) {
        if (!file.exists(workspace)) {
          cat("Wrong path to workspace\n")
          self$reset_sdk_class()
          return()
        }
        cat("[WARNING] Overwriting workspace location [NOT RECOMMENDED]\n")
        self$workspace <- normalizePath(workspace)
        run_args <- append(run_args, c("--workspace", workspace), 0)
      }

      if (!is.null(port)) {
        self$port <- port
        run_args <- append(run_args, c("-p", as.character(port)))
      }

      if (!is.null(headless) && headless == TRUE) {
        run_args <- append(run_args, "--headless")
      } else if (!is.null(headless) && headless == FALSE) {
        run_args <- append(run_args, "--no-headless")
      }

      self$run_command <- self$sirius_path
      self$run_args <- run_args
      self$process <- processx::process$new(command = self$run_command, args = self$run_args)
      self$process_id <- self$process$get_pid()

      if (is.null(port)) {
        cat("SIRIUS was started without specifying --port (-p), trying to find the sirius.port file.\n")
        if (is.null(workspace)) {
          found <- private$cycle_find_sirius_pid_and_port()
        } else {
          found <- private$cycle_find_sirius_pid_and_port(folder = workspace)
        }
        if (!found) {
          cat("Could not find sirius.port file. Please terminate SIRIUS if needed and try specifying a port\n")
          cat("Alternatively, try attaching to a running SIRIUS instance with attach_to_running_sirius()\n")
          return()
        }
      }

      self$host <- paste0('http://localhost:', self$port)
      sirius_api <- self$connect(self$host)
      self$api_client <- sirius_api$api_client

      for (i in 1:30) {
        Sys.sleep(1)
        tryCatch({
          if (self$process$is_alive()) {
            if (sirius_api$actuator_api$Health()$status == "UP") {
              return(sirius_api)
            }
          } else {
            cat("The SIRIUS process seems to have exited during startup. Please investigate this error.\n")
            self$reset_sdk_class()
          }
        }, error = function(e) {
          cat(e$message, "\n")
        })
      }

      cat("SIRIUS seems to have problems starting. Resetting SiriusSDK...\n")
      self$reset_sdk_class()
      return()
    },

    shutdown_sirius = function() {

      tryCatch({
        code <- RSirius::ActuatorApi$new(self$api_client)$ShutdownWithHttpInfo()$status_code
        Sys.sleep(3)
        if (code == 200) {
          cat("Sirius was shut down successfully\n")
          self$reset_sdk_process()
          return()
        }
      }, error = function(e) {
        cat("An Exception occurred while trying to gracefully shutdown SIRIUS!\n")
        cat(e$message, "\n")
      })

      if (!is.null(self$process)) {
        self$process$interrupt()
        Sys.sleep(3)
        if (!self$process$is_alive()) {
          cat("Sirius process has been terminated.\n")
          self$reset_sdk_process()
          return()
        }

        self$process$kill()
        Sys.sleep(3)
        if (!self$process$is_alive()) {
          cat("Sirius process has been killed.\n")
          self$reset_sdk_process()
          return()
        }

        cat("Unable to stop Sirius! - Please manually terminate the process with PID ", self$process$get_pid(), "\n")
        cat("After terminating the process, use start_sirius() to start a new instance of SIRIUS.\n")
        return(FALSE)
      } else if (!is.null(self$process_id)) {
        system(paste("kill -SIGTERM", self$process_id))
        Sys.sleep(3)
        tryCatch({
          system(paste("kill -0", self$process_id))
        }, error = function(e) {
          cat("Sirius process has been terminated.\n")
          self$reset_sdk_process()
          return()
        })

        system(paste("kill -SIGKILL", self$process_id))
        Sys.sleep(3)
        tryCatch({
          system(paste("kill -0", self$process_id))
        }, error = function(e) {
          cat("Sirius process has been killed.\n")
          self$reset_sdk_process()
          return()
        })

        cat("Unable to stop Sirius! - Please manually terminate the process with PID ", self$process_id, "\n")
        cat("After terminating the process, use start_sirius() to start a new instance of SIRIUS.\n")
        return(FALSE)
      } else {
        cat("There does not seem to be any process or process_id to shut down...\n")
        return(FALSE)
      }
    }
  ),

  private = list(
    are_all_vars_none = function() {
      all_names <- ls(envir = self, all.names = TRUE)
      # exclude functions
      field_names <- all_names[sapply(all_names, function(name) !is.function(self[[name]]))]
      # exclude ".__enclos_env__"
      field_names <- field_names[-1]
      all(sapply(field_names, function(name) is.null(self[[name]])))
    },

    find_sirius_pid_and_port = function(sirius_version = NULL) {
      result = private$get_sirius_pid_and_port(sirius_version)
      if (is.logical(result)) {
        return(FALSE)
      }
      pid_file = result[[1]]
      port_file = result[[2]]
      pid <- as.integer(readLines(pid_file, warn = FALSE))
      port <- as.integer(readLines(port_file, warn = FALSE))

      self$process_id <- pid
      self$port <- port

      message("Using port ", port, " from file ", port_file)
      message("Using PID ", pid, " from file ", pid_file)
      return(TRUE)
    },

    delete_sirius_pid_and_port = function(sirius_version = NULL) {
      result = private$get_sirius_pid_and_port(sirius_version)
      if (is.logical(result)) {
        return(FALSE)
      }
      pid_file = result[[1]]
      port_file = result[[2]]
      file.remove(pid_file)
      file.remove (port_file)
    },

    get_sirius_pid_and_port = function(sirius_version = NULL) {
      if (Sys.info()['sysname']=="Windows") {
        global_workspace <- file.path(Sys.getenv("USERPROFILE"), ".sirius")
      } else {
        global_workspace <- path.expand("~/.sirius")
      }

      if (is.null(sirius_version) || sirius_version == "None") {
        port_pattern_match <- "[0-9]*"
      } else {
        port_pattern_match <- sirius_version
      }

      port_pattern <- file.path(global_workspace, paste0("sirius-", port_pattern_match, ".port"))
      port_files <- Sys.glob(port_pattern)

      if (length(port_files) == 0) {
        return(FALSE)
      }

      if (length(port_files) > 1) {
        message("Following sirius port files detected:")
        for (f in port_files) {
          message(f)
        }
      }

      port_file <- sort(port_files)[length(port_files)]
      pid_file <- sub(".port$", ".pid", port_file)

      return(c(pid_file, port_file))
    },

    cycle_find_sirius_pid_and_port = function() {
      for (i in 1:30) {
        Sys.sleep(1)
        if (private$find_sirius_pid_and_port()) {
          return(TRUE)
        }
      }
      return(FALSE)
    }
  )
)
