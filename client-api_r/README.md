> [!WARNING]
> `Rsirius` is now `RSirius`! Starting with `v3.1+sirius6.3.3`, `Rsirius` is renamed to `RSirius` to fit the naming
> convention of `PySirius`. Please make sure you update your library imports accordingly!

# RSirius

REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as
entry-point for scripting languages and software integration SDKs.

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

This will automatically install all dependencies, including the `sirius-ms` package including SIRIUS itself and set an
environment variable for SIRIUS when activating the respective conda environment.
The conda-forge install is the preferred method due to quality-of-life features (
see [Getting Started](#getting-started)).

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
library(RSirius) 
```

## Getting Started

### Local Endpoint

Please follow the [installation procedure](#installation--usage) and then run the following (while replacing the Strings
for project_space and sirius_executable).

NOTE: the SIRIUS REST service automatically allocates a random available port on your machine.
`SiriusSDK` will always try to get this information **automatically**, but you can set a port manually to make sure.

If you installed via conda-forge **or** have SIRIUS in your path, you should be able to activate your environment and
simply use:

```R
library(RSirius)
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
library(RSirius)
sdk <- SiriusSDK$new()
api <- sdk$start_sirius(sirius_path = "your/path/to/sirius", port = 8080)
```

You can also attach to a running SIRIUS instance:

```R
library(RSirius)
sdk <- SiriusSDK$new()
api <- sdk$attach_to_sirius(sirius_major_version = 6, port = 8080)
```

### Remote Endpoint

Please follow the [installation procedure](#installation--usage) and then run the following (while replacing address and
port with the Remote address specifications):

```R
library(RSirius)
sdk <- SiriusSDK$new()
api <- sdk$connect("http://localhost:8080")
```

### SiriusSDK class

For more niche functionality and insights, find the SiriusSDK class [here](rsirius_sdk.R).

### Documentation for API Endpoints

Please click [here](generated/README.md#documentation-for-api-endpoints)

### Documentation For Models

Please click [here](generated/README.md#documentation-for-models)

# Example usage of RSirius

First, import `RSirius` and start the SIRIUS REST service using the [`SiriusSDK`](./generated/R/rsirius_sdk.R) class to retrieve a [central API client](./generated/R/rsirius_api.R) for accessing all API models.

```R
library(RSirius)
sdk <- SiriusSDK$new()
api <- sdk$attach_or_start_sirius()
```

Verify the service is running using the [**Actuator API**](./generated/docs/ActuatorApi.md):

```R
if (!(api$actuator_api$Health()$status == "UP")) {
  message("There seems to be a problem reaching the REST service!")
  quit(status = 1)
}
```

Log in with the [**Login and Account API**](./generated/docs/LoginAndAccountApi.md) to access SIRIUS functionalities:

```R
var_accept_terms <- TRUE # ensure you accept the terms
var_account_credentials <- AccountCredentials$new('SIRIUS_USER', 'SIRIUS_PW')
api$login_and_account_api$Login(var_accept_terms, var_account_credentials)
```

Create a project space using the [**Projects API**](./generated/docs/ProjectsApi.md). This `.sirius` file (default location: `/home/<USER>/sirius-projects/<PROJECT_ID>.sirius`) contains all input data and annotation results. Access the path via [project info](./generated/docs/ProjectInfo.md).

```R
project_info <- api$projects_api$CreateProject("ExampleProject")
```

[Import preprocessed data](./generated/docs/ProjectsApi.md#ImportPreprocessedData) from [`Kaempferol.ms`](../.updater/clientTests/Data/Kaempferol.ms). Import [as a job](./generated/docs/ProjectsApi.md#ImportPreprocessedDataAsJob) to enable waiting for completion. Both mzML run data [import](./generated/docs/ProjectsApi.md#ImportMsRunData) and [import as job](./generated/docs/ProjectsApi.md#ImportMsRunDataAsJob) are supported.

```R
input_file <- "/sirius-client-openAPI/.updater/clientTests/Data/Kaempferol.ms"
import_job <- api$projects_api$ImportPreprocessedDataAsJob(project_info$project_id, input_file)
api$wait_for_job_completion(project_info$project_id, import_job$id)
```

This imports an [aligned feature](./generated/docs/AlignedFeature.md). The [**Features API**](./generated/docs/FeaturesApi.md) extracts feature information, primarily useful after computation.

Run molecular formula identification and CSI:FingerID structure database search by modifying a standard [job submission](./generated/docs/JobSubmission.md). Formula identification and CSI:FingerID are enabled by default. Here, CANOPUS is disabled. Jobs are managed by the [**Jobs API**](./generated/docs/JobsApi.md) and run on all features by default, or on specified features via `alignedFeatureIds`.

```R
kaempferol_feature <- api$features_api$GetAlignedFeatures(project_info$project_id)[[1]]

job_submission <- api$jobs_api$GetDefaultJobConfig()
job_submission$canopusParams$enabled <- FALSE
job_submission$alignedFeatureIds <- list(kaempferol_feature$alignedFeatureId) # optional; defaults to all

job <- api$jobs_api$StartJob(project_info$project_id, job_submission)
api$wait_for_job_completion(project_info$project_id, job$id)
```

Extract results from aligned features. [Compounds](./generated/docs/Compound.md), managed by the [**Compounds API**](./generated/docs/CompoundsApi.md), differ from features as one compound can produce multiple features and multiple features can belong to one compound. Retrieve [structure candidates](./generated/docs/StructureCandidateFormula.md) from the aligned feature and the [consensus annotation](./generated/docs/ConsensusAnnotationsCSI.md) from its top annotated compound:

```R
feature_structure_annotations <- api$features_api$GetStructureCandidates(project_info$project_id, kaempferol_feature$alignedFeatureId)
compound <- api$compounds_api$GetCompound(project_info$project_id, kaempferol_feature$compoundId)
compound_structure_annotations <- compound$consensusAnnotations$csiFingerIdStructure

# directly extract the top structure annotation of a feature
top_structure_annotation <- api$features_api$GetAlignedFeature(project_info$project_id, kaempferol_feature$alignedFeatureId, opt_fields = list("topAnnotations"))$topAnnotations$structureAnnotation
```

Create custom databases using the [**Searchable Databases API**](./generated/docs/SearchableDatabasesApi.md) if you are not satisfied with the results. Import the Kaempferol file (containing three annotated spectra with SMILES) to enable spectral library matching and structure database search. Rerun identification using only this database:

```R
db_name <- "KaempferolDB"
db_params <- SearchableDatabaseParameters$new(display_name = db_name, location = "/my/path/KaempferolDB.siriusdb")
api$searchable_databases_api$CreateDatabase(db_name, db_params)
api$searchable_databases_api$ImportIntoDatabase(db_name, input_files = c(input_file))

job_submission$recompute <- TRUE
job_submission$structureDbSearchParams$structureSearchDBs <- list(db_name)

job_submission$spectraSearchParams$enables <- TRUE
job_submission$spectraSearchParams$spectraSearchDBs <- list(db_name)

job_2 <- api$jobs_api$StartJob(project_info$project_id, job_submission)
api$wait_for_job_completion(project_info$project_id, job_2$id)
```

Close the project and shut down SIRIUS:

```R
api$projects_api$CloseProject(project_info$project_id)
sdk$shutdown_sirius()
```

This demonstrates a simplified `RSirius` workflow to provide a rough idea of order of operation. Prior data processing and additional downstream analyses (e.g., comparing CANOPUS compound class cluster sizes) are not covered here.