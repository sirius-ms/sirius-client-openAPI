#' SIRIUS REST API Class
#'
#' This class \code{SiriusApi} is a subclass of \code{ApiClient}.
#' An object of this class represents a client object which handles the client-server communication.
#' It enables the possibility to start and to shutdown the server with the methods \code{start} and \code{shutdown}.
#'
#' TODO: Section 'Methods'
#'
#' @export
SiriusApi <- R6::R6Class(
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
        })
)





