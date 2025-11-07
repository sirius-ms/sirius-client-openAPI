> [!WARNING]
> `Rsirius` is now `RSirius`! Starting with `v3.1+sirius6.3.3`, `Rsirius` is renamed to `RSirius` to fit the naming
> convention of `PySirius`. Please make sure you update your library imports accordingly!

# RSirius

REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as
entry-point for scripting languages and software integration SDKs.

- to [fine-grained documentation](#documentation-for-api-endpoints)
- to our [example workflow](#example-usage-of-rsirius)

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

This example replicates a typical SIRIUS GUI workflow using the client library. We'll load spectra, run formula identification, fingerprint prediction (CSI:FingerID), structural library search (CSI:FingerID), and compound class prediction (CANOPUS). Downstream analysis of annotations depends on your specific use case and is not covered here. We are unable to showcase every method here, please refer to the [above](#documentation-for-api-endpoints) links for in-depth documentation.

First, import `RSirius` and start the SIRIUS REST service using the [`SiriusSDK`](rsirius_sdk.R) class to retrieve a [central API client](./generated/R/rsirius_api.R) for accessing all API models.

```R
library(RSirius)
sdk <- SiriusSDK$new()
api <- sdk$attach_or_start_sirius()
```

Optionally, verify the service is running using the [**Actuator API**](./generated/docs/ActuatorApi.md) (should succeed if startup completed):

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

Create a project space using the [**Projects API**](./generated/docs/ProjectsApi.md). This `.sirius` file (default location: `/home/<USER>/sirius-projects/<projectId>.sirius`) contains all input data and annotation results. Access the path via [project info](./generated/docs/ProjectInfo.md).

```R
project_info <- api$projects_api$CreateProject("ExampleProject")
```

Import [preprocessed](./generated/docs/ProjectsApi.md#ImportPreprocessedData) data or [mzML](./generated/docs/ProjectsApi.md#ImportMsRunData) runs. Here we use preprocessed data from [`Kaempferol.ms`](../.updater/clientTests/Data/Kaempferol.ms), which contains three MS2 and one MS1 spectra forming one feature. Import as a [job](./generated/docs/Job.md) to enable waiting for completion (available for both [preprocessed](./generated/docs/ProjectsApi.md#ImportPreprocessedDataAsJob) and [mzML](./generated/docs/ProjectsApi.md#ImportMsRunDataAsJob) data).

```R
input_file <- "/sirius-client-openAPI/.updater/clientTests/Data/Kaempferol.ms"
import_job <- api$projects_api$ImportPreprocessedDataAsJob(project_info$projectId, input_file)
api$wait_for_job_completion(project_info$projectId, import_job$id)
```

We've now imported our [aligned feature](./generated/docs/AlignedFeature.md). The [**Features API**](./generated/docs/FeaturesApi.md) lets you select and extract feature information, primarily useful after computation.

Run your desired methods using a [job submission](./generated/docs/JobSubmission.md). **Formula identification, CSI:FingerID, and CANOPUS are enabled by default**. Jobs are managed by the [**Jobs API**](./generated/docs/JobsApi.md) and run on all features by default, or on specified features via `alignedFeatureIds`.

```R
job_submission <- api$jobs_api$GetDefaultJobConfig()

# to disable individual tools, set parameters as shown below for CANOPUS
# job_submission$canopusParams$enabled <- FALSE

# you can also enable additional tools like MSNovelist
# job_submission$msNovelistParams$enabled <- TRUE

# (optional) specify which features to analyze; default: all features
# we know we only have one feature -> Kaempferol
kaempferol_feature <- api$features_api$GetAlignedFeatures(project_info$projectId)[[1]]
job_submission$alignedFeatureIds <- list(kaempferol_feature$alignedFeatureId)

job <- api$jobs_api$StartJob(project_info$projectId, job_submission)
api$wait_for_job_completion(project_info$projectId, job$id)
```

Now you can extract results from your aligned features. [Compounds](./generated/docs/Compound.md), managed by the [**Compounds API**](./generated/docs/CompoundsApi.md), differ from features: one compound can produce multiple features and multiple features can belong to one compound. Retrieve [structure candidates](./generated/docs/StructureCandidateFormula.md) from the aligned feature and the [consensus annotation](./generated/docs/ConsensusAnnotationsCSI.md) from its top annotated compound:

```R
# all structure annotations for our feature
feature_structure_annotations <- api$features_api$GetStructureCandidates(
  project_info$projectId, 
  kaempferol_feature$alignedFeatureId
)
# best ranking structure SMILES
print(feature_structure_annotations[[1]]$smiles)

# get the compound and its consensus annotation
compound <- api$compounds_api$GetCompound(
  project_info$projectId, 
  kaempferol_feature$compoundId, 
  opt_fields = list("consensusAnnotations")
)
compound_structure_annotation <- compound$consensusAnnotations$csiFingerIdStructure
# consensus structure SMILES; if compound has one feature, they are equal
print(compound_structure_annotation$smiles)
```

You might also want to examine all predicted CANOPUS compound classes across your dataset:

```R
# use "topAnnotations" to get only the best scoring annotation per feature
features <- api$features_api$GetAlignedFeatures(
  project_info$projectId, 
  opt_fields = list("topAnnotations")
)

# filter NULL annotations
features_filtered <- Filter(function(f) !is.null(f$topAnnotations$compoundClassAnnotation), features)

# example: get NPC classes
for (f in features_filtered) {
  class <- f$topAnnotations$compoundClassAnnotation$npcClass
  print(paste("Feature with ID", f$alignedFeatureId, "is of class", class$name))
}
```

Not satisfied with your results? Create custom databases using the [**Searchable Databases API**](./generated/docs/SearchableDatabasesApi.md)! Import the example Kaempferol file (containing three annotated spectra and a SMILES) to enable spectral library matching and structure database search, then re-run identification using your custom database.

```R
db_name <- "KaempferolDB"
db_params <- SearchableDatabaseParameters$new(
  display_name = db_name, 
  location = "/my/path/KaempferolDB.siriusdb"
)
api$searchable_databases_api$CreateDatabase(db_name, db_params)
api$searchable_databases_api$ImportIntoDatabase(
  db_name, 
  input_files = c(input_file)
)

# we can add our database manually or get a new default submission form that includes it
job_submission_customdb <- api$jobs_api$GetDefaultJobConfig(
  include_custom_dbs_for_structure_search = TRUE
)

# enable spectral library search
job_submission_customdb$spectraSearchParams$enabled <- TRUE

# allow SIRIUS to overwrite existing results
job_submission_customdb$recompute <- TRUE

job_customdb <- api$jobs_api$StartJob(
  project_info$projectId, 
  job_submission_customdb
)
api$wait_for_job_completion(project_info$projectId, job_customdb$id)
```

Now we can look into the results again just as we did before. There is one new thing we enabled just now, that is the spectral library search. Let's look at our spectral library matches:

```R
library_matches <- api$features_api$GetSpectralLibraryMatches(
  project_info$projectId, 
  kaempferol_feature$alignedFeatureId
)
# SMILES of best spectral library match
library_matches[[1]]$smiles
```

Hopefully you've found something valuable! After completing your analysis, close the project and shut down SIRIUS:

```R
api$projects_api$CloseProject(project_info$projectId)
sdk$shutdown_sirius()
```