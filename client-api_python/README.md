# PySirius
REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.

## Installation & Usage

### conda install (preferred)

Install the `py-sirius-ms` package from conda-forge using
```shell
conda install -c conda-forge py-sirius-ms
```
or
```shell
conda install conda-forge::py-sirius-ms
```

This will automatically install all dependencies, including the `sirius-ms` package including SIRIUS itself and set an environment variable for SIRIUS when activating the respective conda environment.
The conda-forge install is the preferred method due to quality-of-life features (see [Getting Started](#getting-started)).

### pip install

#### Specific Version
Replace v0.0.0 with your api version
```shell
pip install git+https://github.com/sirius-ms/sirius-client-openAPI@v0.0.0#subdirectory=client-api_python/generated
```

#### Latest (unstable) Version

```shell
pip install git+https://github.com/sirius-ms/sirius-client-openAPI#subdirectory=client-api_python/generated
```

(you may need to run `pip` with root permission: `sudo pip install git+https://github.com/sirius-ms/sirius-client-openAPI#subdirectory=client-api_python/generated`)

Then import the package:
```python
import PySirius 
```



### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```shell
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import PySirius
```

## Getting Started

### Local Endpoint
Please follow the [installation procedure](#installation--usage) and then run the following (while replacing the Strings for project_space and sirius_executable).

NOTE: the SIRIUS REST service automatically allocates a random available port on your machine. 
`SiriusSDK` will always try to get this information **automatically**, but you can set a port manually to make sure.

If you installed via conda-forge **or** have SIRIUS in your path, you should be able to activate your environment and simply use:

```python
from PySirius import SiriusSDK
sdk = SiriusSDK()
# SIRIUS must be in the path or the SIRIUS_EXE environment variable must be specified.
# Is automatically configured when installing via conda or windows ms installer
api = sdk.attach_or_start_sirius()

print(api.jobs().get_default_job_config())
print(api.projects().get_project_spaces())

# Optional
sdk.shutdown_sirius()
```

If you installed from GitHub or a local folder manually and do **not** have SIRIUS in path, you can go the manual way:

```python
from PySirius import SiriusSDK
sdk = SiriusSDK()
api = sdk.start_sirius(sirius_path="your/path/to/sirius", port=8080)
```

You can also attach to a running SIRIUS instance:

```python
from PySirius import SiriusSDK
sdk = SiriusSDK()
api = sdk.attach_to_sirius(sirius_major_version=6, port=8080)
```

### Remote Endpoint

Please follow the [installation procedure](#installation--usage) and then run the following (while replacing address and port with the Remote address specifications):

```python
from PySirius import SiriusSDK
sdk = SiriusSDK()
api = sdk.connect("http://localhost:8080")
```

### SiriusSDK class

For more niche functionality and insights, find the SiriusSDK class [here](pysirius_sdk.py).

### Example code
Our feedstocks for the conda-forge packages are running an automated minimal test.
We included the scripts [here](../.updater/clientTests/CondaFeedstockMinimalTests). 
Feel free to take them as example usages of the packages.

## Documentation for API Endpoints
Please click [here](generated/README.md#documentation-for-api-endpoints)

## Documentation For Models
Please click [here](generated/README.md#documentation-for-models)

# Example usage of PySirius

This example replicates a typical SIRIUS GUI workflow using the client library. We'll load spectra, run formula identification, fingerprint prediction (CSI:FingerID), structural library search (CSI:FingerID), and compound class prediction (CANOPUS). Downstream analysis of annotations depends on your specific use case and is not covered here. We are unable to showcase every method here, please refer to the [above](#documentation-for-api-endpoints) links for in-depth documentation.

First, import `PySirius` and start the SIRIUS REST service using the [`SiriusSDK`](pysirius_sdk.py) class to retrieve a [central API client](pysirius_api.py) for accessing all API models.
```python
from PySirius import SiriusSDK

sdk = SiriusSDK()
api = sdk.attach_or_start_sirius()
```

Optionally, verify the service is running using the [**Actuator API**](./generated/docs/ActuatorApi.md) (should succeed if startup completed):
```python
if api.actuator().health().get('status') != "UP":
    print("There seems to be a problem reaching the REST service!")
    exit(1)
```

Log in with the [**Login and Account API**](./generated/docs/LoginAndAccountApi.md) to access SIRIUS functionalities:
```python
from PySirius import AccountCredentials

accept_terms = True  # ensure you accept the terms
account_credentials = AccountCredentials(username='SIRIUS_USER', password='SIRIUS_PW')
api.account().login(accept_terms, account_credentials)
```

Create a project space using the [**Projects API**](./generated/docs/ProjectsApi.md). This `.sirius` file (default location: `/home/<USER>/sirius-projects/<projectId>.sirius`) contains all input data and annotation results. Access the path via [project info](./generated/docs/ProjectInfo.md).
```python
project_info = api.projects().create_project("ExampleProject")
```

Import [preprocessed](./generated/docs/ProjectsApi.md#import_preprocessed_data) data or [mzML](./generated/docs/ProjectsApi.md#import_ms_run_data) runs. Here we use preprocessed data from [`Kaempferol.ms`](../.updater/clientTests/Data/Kaempferol.ms), which contains three MS2 and one MS1 spectra forming one feature. Import as a [job](./generated/docs/Job.md) to enable waiting for completion (available for both [preprocessed](./generated/docs/ProjectsApi.md#import_preprocessed_data_as_job) and [mzML](./generated/docs/ProjectsApi.md#import_ms_run_data_as_job) data).
```python
input_file = "/sirius-client-openAPI/.updater/clientTests/Data/Kaempferol.ms"
import_job = api.projects().import_preprocessed_data_as_job(project_info.project_id, input_files=[input_file])
api.wait_for_job_completion(project_info, import_job)
```

We've now imported our [aligned feature](./generated/docs/AlignedFeature.md). The [**Features API**](./generated/docs/FeaturesApi.md) lets you select and extract feature information, primarily useful after computation.

Run your desired methods using a [job submission](./generated/docs/JobSubmission.md). **Formula identification, CSI:FingerID, and CANOPUS are enabled by default**. Jobs are managed by the [**Jobs API**](./generated/docs/JobsApi.md) and run on all features by default, or on specified features via `aligned_feature_ids`.
```python
job_submission = api.jobs().get_default_job_config()

# to disable individual tools, set parameters as shown below for CANOPUS
# job_submission.canopus_params.enabled = False

# you can also enable additional tools like MSNovelist
# job_submission.ms_novelist_params.enabled = True

# (optional) specify which features to analyze; default: all features
# we know we only have one feature -> Kaempferol
kaempferol_feature = api.features().get_aligned_features(project_info.project_id)[0]
job_submission.aligned_feature_ids = [kaempferol_feature.aligned_feature_id]

job = api.jobs().start_job(project_info.project_id, job_submission)
api.wait_for_job_completion(project_info, job)
```

Now you can extract results from your aligned features. [Compounds](./generated/docs/Compound.md), managed by the [**Compounds API**](./generated/docs/CompoundsApi.md), differ from features: one compound can produce multiple features and multiple features can belong to one compound. Retrieve [structure candidates](./generated/docs/StructureCandidateFormula.md) from the aligned feature and the [consensus annotation](./generated/docs/ConsensusAnnotationsCSI.md) from its top annotated compound:
```python
# all structure annotations for our feature
feature_structure_annotations = api.features().get_structure_candidates(
    project_info.project_id, 
    kaempferol_feature.aligned_feature_id
)
# best ranking structure SMILES
print(feature_structure_annotations[0].smiles)

# get the compound and its consensus annotation
from PySirius import CompoundOptField
compound = api.compounds().get_compound(
    project_info.project_id, 
    kaempferol_feature.compound_id, 
    opt_fields=[CompoundOptField.CONSENSUSANNOTATIONS]
)
compound_structure_annotation = compound.consensus_annotations.csi_finger_id_structure
# consensus structure SMILES; if compound has one feature, they are equal
print(compound_structure_annotation.smiles)
```

You might also want to examine all predicted CANOPUS compound classes across your dataset:
```python
# use "topAnnotations" to get only the best scoring annotation per feature
from PySirius import AlignedFeatureOptField
features = api.features().get_aligned_features(
    project_info.project_id, 
    opt_fields=[AlignedFeatureOptField.TOPANNOTATIONS]
)

# filter None annotations
features_filtered = [f for f in features if f.top_annotations and f.top_annotations.compound_class_annotation]

# example: get NPC classes
for f in features_filtered:
    class_annotation = f.top_annotations.compound_class_annotation.npc_class
    print(f"Feature with ID {f.aligned_feature_id} is of class {class_annotation.name}")
```

Not satisfied with your results? Create custom databases using the [**Searchable Databases API**](./generated/docs/SearchableDatabasesApi.md)! Import the example Kaempferol file (containing three annotated spectra and a SMILES) to enable spectral library matching and structure database search, then re-run identification using your custom database.
```python
from PySirius import SearchableDatabaseParameters

db_name = "KaempferolDB"
db_params = SearchableDatabaseParameters(
    display_name=db_name, 
    location="/my/path/KaempferolDB.siriusdb"
)
api.databases().create_database(db_name, db_params)
api.databases().import_into_database(
    db_name, 
    input_files=[input_file]
)

# we can add our database manually or get a new default submission form that includes it
job_submission_customdb = api.jobs().get_default_job_config(
    include_custom_dbs_for_structure_search=True
)

# enable spectral library search
job_submission_customdb.spectra_search_params.enabled = True

# allow SIRIUS to overwrite existing results
job_submission_customdb.recompute = True

job_customdb = api.jobs().start_job(
    project_info.project_id, 
    job_submission_customdb
)
api.wait_for_job_completion(project_info, job_customdb)
```

Now we can look into the results again just as we did before. There is one new thing we enabled just now, that is the spectral library search. Let's look at our spectral library matches:
```python
library_matches = api.features().get_spectral_library_matches(
    project_info.project_id, 
    kaempferol_feature.aligned_feature_id
)
# SMILES of best spectral library match
print(library_matches[0].smiles)
```

Hopefully you've found something valuable! After completing your analysis, close the project and shut down SIRIUS:
```python
api.projects().close_project(project_info.project_id)
sdk.shutdown_sirius()
```