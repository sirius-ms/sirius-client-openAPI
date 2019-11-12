\name{CompoundMsData}
\alias{CompoundMsData}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("CompoundMsData")}
\format{
  The format is:
Class 'R6ClassGenerator' <CompoundMsData> object generator
  Public:
    id: NULL
    index: NULL
    ionMass: NULL
    ionType: NULL
    mergedMs1: NULL
    mergedMs2: NULL
    ms1Spectra: NULL
    ms2Spectra: NULL
    name: NULL
    initialize: function (id, index, ionMass, ionType, mergedMs1, mergedMs2, 
    toJSON: function () 
    fromJSON: function (CompoundMsDataJson) 
    toJSONString: function () 
    fromJSONString: function (CompoundMsDataJson) 
    clone: function (deep = FALSE) 
  Parent env: <environment: R_GlobalEnv>
  Locked objects: TRUE
  Locked class: FALSE
  Portable: TRUE 
 - attr(*, "name")= chr "CompoundMsData_generator"
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
data(CompoundMsData)
## maybe str(CompoundMsData) ; plot(CompoundMsData) ...
}
\keyword{datasets}
