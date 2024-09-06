# PySirius
REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.

## Installation & Usage
### pip install

#### Specific Version
Replace v0.0.0 with your api version
```sh
pip install git+https://github.com/boecker-lab/sirius-client-openAPI@v0.0.0#subdirectory=client-api_python/generated
```

#### Latest (unstable) Version

```sh
pip install git+https://github.com/boecker-lab/sirius-client-openAPI#subdirectory=client-api_python/generated
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
sdk = SiriusSDK()

# Or attach to a running sirius or start new sirius if none is running
# SIRIUS must be in the path or the SIRIUS_EXE must be specified.
# Is automatically configured when installing via conda or windows ms installer
api = sdk.attach_or_start_sirius()

print(api.jobs().get_default_job_config())
print(api.projects().get_project_spaces())
```

### Remote Endpoint

Please follow the [installation procedure](#installation--usage) and then run the following (while replacing address and port with the Remote address specifications):

```python
from PySirius import SiriusSDK

api = SiriusSDK.connect("http://localhost:8080")

print(api.jobs().get_default_job_config())
print(api.projects().get_project_spaces())
```

## Documentation for API Endpoints
Please click [here](generated/README.md#documentation-for-api-endpoints)

## Documentation For Models
Please click [here](generated/README.md#documentation-for-models)
