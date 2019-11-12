\name{CompoundId}
\alias{CompoundId}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("CompoundId")}
\format{
  The format is:
Class 'R6ClassGenerator' <CompoundId> object generator
  Public:
    id: NULL
    index: NULL
    ionMass: NULL
    ionType: NULL
    name: NULL
    initialize: function (id, index, ionMass, ionType, name) 
    toJSON: function () 
    fromJSON: function (CompoundIdJson) 
    toJSONString: function () 
    fromJSONString: function (CompoundIdJson) 
    clone: function (deep = FALSE) 
  Parent env: <environment: R_GlobalEnv>
  Locked objects: TRUE
  Locked class: FALSE
  Portable: TRUE 
 - attr(*, "name")= chr "CompoundId_generator"
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(CompoundId)
## maybe str(CompoundId) ; plot(CompoundId) ...
}
\keyword{datasets}
