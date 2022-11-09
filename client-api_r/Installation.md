# RSirius

## Required packages
```
conda install -c conda-forge r r-devtools r-remotes
```
## Getting RSirius
```
library(R6)
library(devtools)
library(remotes)
install_github(repo = "joXemMx/sirius-client-openAPI", subdir = "client-api_r/generated", ref = "master", build = TRUE)
```
After installation, simply import RSirius as
```
library(RSirius)
```
## Testing RSirius
```
api_client <- SiriusApi$new()
api_client$start(pathToSirius, inputData)
api_client$is_active() #TRUE
api_client$shutdown()
api_client$is_active() #FALSE
```
## Using other classes example
```
comp_api <- ComputationsApi$new(api_client) 
comp_api$get_default_job_config() #error
api_client$start(pathToSirius, inputData)
comp_api$get_default_job_config() #working
```
## Using subclasses of SiriusApi
All classes included in the package can also be called directly as subclasses of SiriusApi.
```
api_client <- SiriusApi$new()
api_client$start(pathToSirius, inputData)
comp_api <- api_client$ComputationsApi$new()
```
This can also be done in one command.
```
comp_api <- SiriusApi$new()$ComputationsApi$new()
```
The API would then have to be started like this:
```
comp_api$start(pathToSirius, inputData)
```
