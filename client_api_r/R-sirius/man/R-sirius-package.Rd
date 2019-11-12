\name{R-sirius-package}
\alias{R-sirius-package}
\alias{R-sirius}
\docType{package}
\title{
\packageTitle{R-sirius}
}
\description{
\packageDescription{R-sirius}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{R-sirius}
\packageIndices{R-sirius}
 % An overview of how to use the package, including the most important functions%
In order to use this package you have to start SIRIUS as a background service first. This is feasible by calling "<path_to_sirius> -i <input.data> -o <project.space> asService".
After starting SIRIUS as a background service you have to create an object of class "ApiClient" which is contained in this package.
}
\author{
\packageAuthor{R-sirius}

Maintainer: \packageMaintainer{R-sirius}
}
\references{
% Literature or other references for background information ~~
}
% Optionally other standard keywords, one per line, from file KEYWORDS in ~~
% the R documentation directory ~~
\keyword{ package }
\seealso{
% Optional links to other man pages, e.g. ~~
% \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
}
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
