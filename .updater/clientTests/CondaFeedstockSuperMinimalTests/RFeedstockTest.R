options(error = traceback)

library('RSirius')

sdk <- SiriusSDK$new()
sirius_api <- sdk$attach_or_start_sirius()
response <- sirius_api$info_api$GetInfo()

if (!inherits(response, "Info")) {
  stop("Error: Did not return an object of class Info.")
}

sdk$shutdown_sirius()