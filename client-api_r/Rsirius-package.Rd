\name{Rsirius-package}
\alias{Rsirius-package}
\alias{Rsirius}
\docType{package}
\title{
\packageTitle{Rsirius}
}
\description{
\packageDescription{Rsirius}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{Rsirius}
\packageIndices{Rsirius}
 % An overview of how to use the package, including the most important functions%
In order to use this package you have to start SIRIUS as a background service first. This is feasible by calling "<path_to_sirius> -i <input.data> -o <project.space> asService".
After starting SIRIUS as a background service you have to create an object of class "ApiClient" which is contained in this package.
}
\author{
\packageAuthor{Rsirius}

Maintainer: \packageMaintainer{Rsirius}
}

\keyword{package}
\examples{
# Start the middleware server first.
# Then you have to construct an ApiClient object in order to do some requests.
api_client <- ApiClient$new(basePath = "http://localhost:8080")

# request and response
comp_controller <- CompoundControllerApi$new(api_client)
# resp <- comp_controller$get_compound_ids_using_get(pid = "mySiriusProjectSpace")
# compound_ids <- resp$content

# print(cbind(compound_ids$index,compound_id$id,compound_ids$name,compound_ids$ionMass,compound_ids$ionType))
}
