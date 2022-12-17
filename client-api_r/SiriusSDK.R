SiriusSDK = R6::R6Class(
  classname = "SiriusSDK",
  inherit = R6P::Singleton,
  public = list(
    
    pid <- NULL,
    port <- NULL,
    host <- NULL,
    pidFile <- NULL,
    portFile <- NULL,
    basePath <- NULL,
    
    start = function(host = "http://localhost:", port = 8080, pathToSirius, projectSpace = "", force=FALSE){
      
      if(all(file.exists(self$pidFile),!force)){
        stop("Found existing sirius.pid file. If you are sure no instance of Sirius is currently running on your computer,
             call start again using the 'force=TRUE' parameter.")
      }
      
      if(!is.null(self$pid)){
        stop(paste("Sirius has already been started with PID: ",self$pid, sep = ""))
      }
      
      if(all(is.character(host),length(host) == 1)){
        if(is.numeric(port)){
          self$port <- as.integer(port)
          self$host <- host
          self$basePath <- paste(self$host,self$port, sep = "")
          # TODO read in file
          # TODO get line containing version as string
          # TODO different home directory calls for OS
          # Linux and Mac: cd ~
          # Windows: cd %HOMEPATH%
          num = as.numeric(gsub("\\D", "", str))
          self$pidFile <- paste("~/.sirius-",substr(num, 1, 1),".",substr(num, 2, 2),".","/sirius.pid",sep = "")
          self$portFile <- paste("~/.sirius-",substr(num, 1, 1),".",substr(num, 2, 2),".","/sirius.port",sep = "")
        }else{
          stop("The given parameter 'port' has to be an integer value.")
        }
      }else{
        stop("The given parameter 'host' has to be a valid domain name.
                'host' has to be a character vector of length one.")
      }
      
      if(all(is.character(pathToSirius),length(pathToSirius) == 1)){
        if(all(file.exists(pathToSirius),!dir.exists(pathToSirius))){
          # the file which has to be executed
          sirius <- basename(pathToSirius) 
          dir_sirius <- dirname(pathToSirius)
          # Change working directory to the directory which contains SIRIUS.
          # This has to be done in the case that pathToSirius contains at least one whitespace.
          wd <- getwd()
          setwd(dir_sirius)
          
          # It is also possible that inputData and projectSpace contain at least one whitespace:
          sirius_call <- paste("./",sirius, sep = "")
          
          if(!missing(projectSpace)){
            if(all(is.character(projectSpace),length(projectSpace) == 1)){
              if(file.exists(projectSpace)){
                sirius_call <- paste(sirius_call," --project-space=","\"",projectSpace,"\"",sep = "")
              }else{
                stop("The string 'projectSpace' should represent a valid path to your project space.")
              }
            }else{
              stop("The given parameter 'projectSpace' has to be a character vector of length 1.")
            }
          }
          sirius_call <- paste(sirius_call," rest -s -p ",self$port,sep = "")
          print(sirius_call)
          # Call SIRIUS as background service in commando line:
          system(sirius_call, wait=FALSE)
          for (i in 1:30){
            Sys.sleep(1)
            if(file.exists(self$pidFile)){
              self$pid <- strtoi(readLines(self$pidFile, warn=FALSE))
              return(ApiClient$new(base_path = paste(self$host,self$port, sep = "")))
            }
          }
        }else{
          stop("The given string 'pathToSirius' should represent a valid path to the executable SIRIUS file.")
        }
      }else{
        stop("The parameter 'pathToSirius' does not meet the requirements.
		            It has to be a character vector of length 1.")
      }
    },
    
    is_active = function(){
      tryCatch(
        {
          req <- request(paste(self$basePath,"/actuator/health", sep = ""))
          resp <- req_perform(req)
          if(resp_status(resp) >= 200 && resp_status(resp) <= 299){
            if(resp_body_json(resp) == "UP"){
              return(TRUE)
            }else{
              return(FALSE)
            }
          }else{
            print("The request was not completely successfull.")
            return(FALSE)
          }
        },error <- function(e){
          return(FALSE)
        })
    },
    
    shutdown = function(){
      
      terminationResponse = function(killed = FALSE){
        print("The SIRIUS REST service ended successfully. ")
        if (killed){
          file.remove(self$pidFile)
          file.remove(self$portFile)
          self$pid <- NULL
          self$pidFile <- NULL
          self$portFile <- NULL
        }
      }
      
      darwinLinuxShutdown = function(){
        # kill defaults to signal value 15: TERM, Termination signal - allow an orderly shutdown; equiv. SIGTERM
        print("Trying to end Sirius via 'kill' ...")
        # resp should be 0 on success, otherwise for Mac -1, according to
        # https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/kill.2.html
        # and 1 in Linux
        resp <- system(paste("kill ", self$pid, sep = ""))
        Sys.sleep(2)
        
        if(resp!=0){
          # singal value 9: KILL,	Kill signal; equiv. SIGSTOP
          print("'kill' did not work. Trying to end Sirius forcefully via 'kill -9' ...")
          resp <- system(paste("kill -9 ", self$pid, sep = ""))
          Sys.sleep(2)
          
          if(resp!=0){
            print("'kill -9' did not work. Please shut down your Port running Sirius and delete the sirius.pid file")
          } else {
            terminationResponse(killed = TRUE)
          }
        } else {
          terminationResponse()
        }
      }
      
      windowsShutdown = function(){
        print("Trying to end Sirius via 'taskkill' ...")
        # resp is either 0 (success), 1 (access denied) or 128 (no such process)
        resp <- system(paste("taskkill /pid ", self$pid, sep = ""))
        Sys.sleep(2)
        
        if(resp!=0){
          print("'taskkill' did not work. Trying to end Sirius forcefully via 'taskkill /f' ...")
          resp <- system(paste("taskkill /pid ", self$pid, " /f", sep = ""))
          Sys.sleep(2)
          
          if(resp!=0){
            print("'taskkill' did not work. Please shut down your Port running Sirius and delete the sirius.pid file")
          } else {
            terminationResponse(killed = TRUE)
          }
        } else {
          terminationResponse()
        }
      }
      
      if(self$is_active()){
        req_shutdown <- req_method(request(paste(self$basePath,"/actuator/shutdown",sep = "")), "POST")
        resp_shutdown <- req_perform(req_shutdown)
        if(resp_status(resp_shutdown) == 200){
          terminationResponse()
        } else {
          print("SIRIUS REST service seems not to have shut down as intended.")
        }
        
        if(Sys.info()['sysname'] %in% c("Linux","Darwin")){
          darwinLinuxShutdown()
        } else if (Sys.info()['sysname']=="Windows"){
          windowsShutdown()
        } else {
          stop("Unsupported operating system.")
        }
        
      }else{
        print("SIRIUS does not run as REST service at this moment.")
      }
    }
  )
)
