Sirius = R6::R6Class(
  classname = "Sirius",
  inherit = R6P::Singleton,
  public = list(
    
    pid = NULL,
    port = NULL,
    host = NULL,
    pidFile = NULL,
    basePath = NULL,
    
    start = function(host = "http://localhost:", port = 8080, pathToSirius, projectSpace = ""){
      
      if(!is.null(self$pid)){
        stop(paste("Sirius has already been started with PID: ",self$pid, sep = ""))
      }
      
      if(is.character(host) && length(host) == 1){
        if(is.numeric(port)){
          self$port <- as.integer(port)
          self$host <- host
          self$basePath <- paste(self$host,self$port, sep = "")
          self$pidFile <- paste("~/.",SIRIUSVERSION,"/sirius.pid",sep = "") 
        }else{
          stop("The given parameter \"port\" has to be an integer value.")
        }
      }else{
        stop("The given parameter \"host\" has to be a valid domain name.
                \"host\" has to be a character vector of length one.")
      }
      
      if(all(is.character(pathToSirius),length(pathToSirius) == 1)){
        if(all(file.exists(pathToSirius),!dir.exists(pathToSirius))){
          
          sirius <- basename(pathToSirius) # the file which has to be executed
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
                stop("The string \"projectSpace\" should represent a valid path to your project space.")
              }
            }else{
              stop("The given parameter \"projectSpace\" has to be a character vector of length 1.")
            }
          }
          sirius_call <- paste(sirius_call," rest -s -p ",self$port,sep = "")
          print(sirius_call)
          # Call SIRIUS as background service in commando line:
          system(sirius_call, wait=FALSE)
          Sys.sleep(10) #delete later 
          for (i in 1:30){
            Sys.sleep(1)
            if(file.exists(self$pidFile)){
              self$pid <- strtoi(readLines(self$pidFile, warn=FALSE))
              break
            }
          }
        }else{
          stop("The given string \"pathToSirius\" should represent a valid path to the executable SIRIUS file.")
        }
      }else{
        stop("The parameter \"pathToSirius\" does not meet the requirements.
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
        },error = function(e){
          return(FALSE)
        })
    },
    
    shutdown = function(){
      if(self$is_active()){
        req_shutdown = req_method(request(paste(self$basePath,"/actuator/shutdown",sep = "")), "POST")
        resp_shutdown = req_perform(req_shutdown)
        if(resp_body_json(resp_shutdown)=="Shutting down SpringBootApp and SIRIUS afterward, bye..."){
          terminationResponse()
        } else {
          print("SIRIUS REST service seems not to have shut down as intended.")
        }
        
        if(Sys.info()['sysname']=="Linux"){
          print("Trying to end Sirius via SIGTERM...")
          pskill(self$pid, SIGTERM)
          Sys.sleep(5)
          
          if(file.exists(self$pidFile)){
            print("SIGTERM did not work. Trying to end Sirius via SIGKILL...")
            pskill(self$pid, SIGKILL)
            Sys.sleep(5)
            
            if(file.exists(self$pidFile)){
              print("SIGKILL did not work. Please shut down your Port running Sirius and delete the sirius.pid file")
            } else {
              terminationResponse()
            }
          } else {
            terminationResponse()
          }
          
        } else {
          print("Trying to end Sirius via SIGTERM...")
          pskill(self$pid, SIGTERM)
          Sys.sleep(5)
          
          if(file.exists(self$pidFile)){
            print("SIGTERM did not work. Trying to end Sirius via taskkill...")
            system(paste("taskkill /pid ",self$pid," /f", sep = ""))
            Sys.sleep(5)
            
            if(file.exists(self$pidFile)){
              print("Taskkill did not work. Please shut down your Port running Sirius and delete the sirius.pid file")
            } else {
              terminationResponse()
            }
          } else {
            terminationResponse()
          }
        }
      }else{
        print("SIRIUS does not run as REST service at this moment.")
      }
    },
    
    getApiClient = function(host = self$host, port = self$port){
      return(ApiClient$new(paste(host,port, sep = "")))
    },
    
    terminationResponse <- function(){
      print("The SIRIUS REST service ended successfully. ")
      file.remove(self$pidFile)
      # TODO
      file.remove(paste("~/.",SIRIUSVERSION,"/sirius.port",sep = "") )
      self$pid=NULL
    }
  )
)
