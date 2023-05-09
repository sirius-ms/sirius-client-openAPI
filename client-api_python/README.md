# PySirius
REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.

## Installation & Usage
### pip install
#### Latest (unstable) Version

```sh
pip install git+https://github.com/boecker-lab/sirius-client-openAPI#subdirectory=client-api_python/generated
```
#### Specific Version
Replace v0.0.0 with your sirius version
```sh
pip install git+https://github.com/boecker-lab/sirius-client-openAPI@v0.0.0#subdirectory=client-api_python/generated
```
(you may need to run `pip` with root permission: `sudo pip install git+https://github.com/boecker-lab/sirius-client-openAPI#subdirectory=client-api_python/generated`)

Then import the package:
```python
import PySirius 
```



### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import PySirius
```

## Getting Started

### Local Endpoint
Please follow the [installation procedure](#installation--usage) and then run the following (while replacing the Strings for project_space and sirius_executable):

```python
from PySirius import SiriusSDK
project_space = "PATH_TO_EMPTY_OR_PROJECT_FOLDER"
sirius_executable = "PATH_TO_THE_SIRIUS_EXECUTEABLE"
api = SiriusSDK.start(sirius_executable=sirius_executable, project_space=project_space)
print(api.get_ComputationsApi().get_default_job_config())
print(api.get_ProjectSpacesApi().get_project_spaces())
```

### Remote Endpoint

Please follow the [installation procedure](#installation--usage) and then run the following (while replacing address and port with the Remote address specifications):

```python
from PySirius import PySiriusAPI
address = "http://localhost"
port = 8080
api = PySiriusAPI(address=address, port=port)
print(api.get_ComputationsApi().get_default_job_config())
print(api.get_ProjectSpacesApi().get_project_spaces())
```

## Documentation for API Endpoints
Please click [here](generated/README.md#documentation-for-api-endpoints)

## Documentation For Models
Please click [here](generated/README.md#documentation-for-models)
