# RSirius
This is a short introduction on Rsirius. Go to [**generated**](generated) to find the package contents and a much more detailed README of classes and their functions. Stay here to learn about our **SDK class allowing you to start and terminate Sirius Rest service from within R**.
## Required packages
```R
conda install -c conda-forge r-base r-remotes
```
## Getting RSirius
```R
library(remotes)
install_github(repo = "boecker-lab/sirius-client-openAPI", subdir = "client-api_r/generated", ref = "master", build = TRUE)
```
After installation, simply import RSirius as
```R
library(RSirius)
```
## Using Rsirius
### Using standard classes
The API classes included can be used on their own. For the example(s) below to work, make sure to have the Sirius Rest service running in the background (on default localhost port 8080).
```R
my_path = "http://localhost:8080"
api_client <- ApiClient$new(base_path = my_path)
comp_api <- ComputationsApi$new(api_client) 
comp_api$GetDefaultJobConfig()
```
Note that you could also do this in one line, thought using this method does not allow autocompletion of any methods names.
```R
ComputationsApi$new(ApiClient$new(base_path = "http://localhost:8080"))$GetDefaultJobConfig()
```
### Using subclasses of the wrapper
All classes included in the package can also be called directly as subclasses of the wrapper class `rsirius_api`. No need to remember all of them by name. Note that they are named in a different style in this case.
```R
my_path = "http://localhost:8080"
api_client <- ApiClient$new(base_path = my_path)
wrapper <- rsirius_api$new(api_client)
wrapper$computations_api$GetDefaultJobConfig()
```
### Managing everything via the SDK class
The Sirius Rest service can be started via our class `SiriusSDK`. This class is able to start the Rest service when provided a path to the Sirius file and returns an instance of `rsirius_api`.
```R
sdk <- SiriusSDK$new()
wrapper <- sdk$start(pathToSirius = "path/to/sirius", host = "http://localhost:", port = 8080)  # this returns the wrapper class
wrapper$computations_api$GetDefaultJobConfig()
```
`SiriusSDK` also provides some more functionality for managing Sirius:
- `sdk$start()` provides all of these parameters: `start = function(pathToSirius, projectSpace = NULL, host = "http://localhost:", port = 8080, workSpace = NULL, force=FALSE)`
- `sdk$is_active()` will look if the service is still running, returning `TRUE` or `FALSE`
- `sdk$shutdown()` will (try to) shutdown Sirius savely. First by POST request, then by standard kill command. If there is no response, Sirius will be killed by force.
- `sdk` will return all properties of the SDK. These include things like the Port or Process ID (PID). This PID is what is used for killing Sirius in the `shutdown()` command. Both Port and PID are read from files `sirius.port` and `sirius.pid` respectively. Sirius will delete these files when terminated properly. When killed by force, the files will remain. We also use these files to warn the user from running multiple Sirius services at once. After killing Sirius by force and being sure no Sirius service is running, specify `force=TRUE` in `sdk$start()` to start the service anew, overwriting old Port and PID files.
