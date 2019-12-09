
SiriusApi <- R6::R6Class(
    classname = "SiriusApi",
    inherit = ApiClient,
    public = list(
        port = 8080,
        initialize = function(host = "http:\\localhost:",port = 8080, configuration = NULL, defaultHeaders = NULL){
            if(is.character(host) && length(host) == 1){
                if(is.numeric(post)){
                    self$port <- as.integer(port)
                    basePath <- paste(host,port, sep = "")
                    super$initialize(basePath,configuration,defaultHeaders)
                }else{
                    stop("The given parameter \"port\" has to be an integer value.")
                }
            }else{
                stop("The given parameter \"host\" has to be a valid domain name.")
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
            httr:GET(paste(super$basePath,"/actuator/shutdown"))
        }))





