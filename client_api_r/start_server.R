#' This method starts the SIRIUS server as REST service.
#'
#' @param pathToSirius This character vector represents the path to the SIRIUS instance.
#' @param inputData
#' @param projectSpace
#' @param port
#' @param help
#'
start_server <- function(pathToSirius, inputData, projectSpace = "", port = 8080){
	sirius_call <- paste(pathToSirius,"-i",inputData,"asService","-p",port)

	if(length(projectSpace) > 0){
		sirius_call <- paste(sirius_call,"-o",projectSpace)
	}
	system(sirius_call)
}
