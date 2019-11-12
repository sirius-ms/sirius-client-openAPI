\name{ApiClient}
\alias{ApiClient}
\docType{data}
\title{ApiClient}
\description{
An ApiClient object handles the client-server communication. 
After SIRIUS was started as a background service with "<path_to_sirius> -i <input.data> -o <project.space> asService" an object of this class enables 
requests to this server. 
}
\usage{ApiClient$new(basePath, configuration,defaultHeaders)}
\format{
  The format is:
Class 'R6ClassGenerator' <ApiClient> object generator
  Public:
    basePath: https://localhost:8080
    configuration: NULL
    userAgent: NULL
    defaultHeaders: NULL
    initialize: function (basePath, configuration, defaultHeaders) 
    callApi: function (url, method, queryParams, headerParams, body, ...) 
    clone: function (deep = FALSE) 
  Parent env: <environment: R_GlobalEnv>
  Locked objects: TRUE
  Locked class: FALSE
  Portable: TRUE 
 - attr(*, "name")= chr "ApiClient_generator"
}
\details{
The parameter \code{basePath} should be equals to "http://localhost:8080" in order to get acces to the SIRIUS Middleware server.
}
\source{https://github.com/swagger-api/swagger-codegen}

\examples{
# Start the middleware server first.
# Then you have to construct an ApiClient object in order to do some requests.
api_client <- ApiClient$new(basePath = "http://localhost:8080")

# request and response
comp_controller <- CompoundControllerApi$new(api_client) 
resp <- comp_controller$get_compound_ids_using_get(pid = "mice_mzml_500d")
compound_ids <- resp$content

print(cbind(compound_ids$index,compound_id$id,compound_ids$name,compound_ids$ionMass,compound_ids$ionType))
}
\keyword{IO}
\keyword{connections}

