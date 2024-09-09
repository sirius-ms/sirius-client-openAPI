# RSirius
REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.

## Installation & Usage

### conda install (preferred)

Install the `r-sirius-ms` package from conda-forge using
```shell
conda install -c conda-forge r-sirius-ms
```
or
```shell
conda install conda-forge::r-sirius-ms
```

This will automatically install all dependencies, including the `sirius-ms` package including SIRIUS itself and set an environment variable for SIRIUS when activating the respective conda environment.
The conda-forge install is the preferred method due to quality-of-life features (see [Getting Started](#getting-started)).

### install using remotes library

#### Specific Version
Replace v0.0.0 with your api version
```R
library(remotes)
install_github(repo = "sirius-ms/sirius-client-openAPI@v0.0.0", subdir = "client-api_r/generated", ref = "master", build = TRUE)
```

#### Latest (unstable) Version
```R
library(remotes)
install_github(repo = "sirius-ms/sirius-client-openAPI", subdir = "client-api_r/generated", ref = "master", build = TRUE)
```

Then import the package:
```R
library('Rsirius') 
```

## Getting Started
Being updated! Coming soon...
<!--
### Local Endpoint
Please follow the [installation procedure](#installation--usage) and then run the following (while replacing the Strings for project_space and sirius_executable).

NOTE: the SIRIUS REST service automatically allocates a random available port on your machine. 
`SiriusSDK` will always try to get this information **automatically**, but you can set a port manually to make sure.

If you installed via conda-forge **or** have SIRIUS in your path, you should be able to activate your environment and simply use:

```R
library('Rsirius') 
sdk <- SiriusSDK$new()
# SIRIUS must be in the path or the SIRIUS_EXE environment variable must be specified.
# Is automatically configured when installing via conda or windows ms installer
api <- sdk$attach_or_start_sirius()

print(api$jobs_api$GetDefaultJobConfig())
print(api$projects_api$GetProjectSpaces())

# Optional
sdk$shutdown_sirius()
```

If you installed from GitHub or a local folder manually and do **not** have SIRIUS in path, you can go the manual way:

```R
library('Rsirius') 
sdk <- SiriusSDK$new()
api = sdk$start_sirius(sirius_path="your/path/to/sirius", port=8080)
```

You can also attach to a running SIRIUS instance:

```R
library('Rsirius') 
sdk <- SiriusSDK$new()
api = sdk$attach_to_sirius(sirius_major_version=6, port=8080)
```

### Remote Endpoint

Please follow the [installation procedure](#installation--usage) and then run the following (while replacing address and port with the Remote address specifications):

```R
library('Rsirius') 
sdk <- SiriusSDK$new()
api = sdk$connect("http://localhost:8080")
```
-->
### SiriusSDK class

For more niche functionality and insights, find the SiriusSDK class [here](SiriusSDK.R).

### Example code
Our feedstocks for the conda-forge packages are running an automated minimal test.
We included the scripts [here](../.updater/clientTests/CondaFeedstockMinimalTests). 
Feel free to take them as example usages of the packages.

## Documentation for API Endpoints
Please click [here](generated/README.md#documentation-for-api-endpoints)

## Documentation For Models
Please click [here](generated/README.md#documentation-for-models)
