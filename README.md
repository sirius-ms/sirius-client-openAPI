[![conda-forge | r-sirius-ms](https://img.shields.io/conda/vn/conda-forge/r-sirius-ms?logo=anaconda&label=r-sirius-ms)](https://anaconda.org/conda-forge/r-sirius-ms)
[![conda-forge | py-sirius-ms](https://img.shields.io/conda/vn/conda-forge/py-sirius-ms?logo=anaconda&label=py-sirius-ms)](https://anaconda.org/conda-forge/py-sirius-ms)
[![conda-forge | sirius-ms](https://img.shields.io/conda/vn/conda-forge/sirius-ms?logo=anaconda&label=sirius-ms)](https://anaconda.org/conda-forge/sirius-ms)
[![Java SDK](https://img.shields.io/badge/Java_SDK-GitLab/Maven-fc6d26?labelColor=555&logo=gitlab&logoColor=white)](https://gitlab.com/bright-giant/registry-public/-/packages/)

> [!WARNING]
> `Rsirius` is now `RSirius`! Starting with `v3.1+sirius6.3.3`, `Rsirius` is renamed to `RSirius` to fit the naming convention of `PySirius`. Please make sure you update your library imports accordingly!

# sirius-client-openAPI

Maintained and prebuild [OpenAPI](https://www.openapis.org/) based SIRIUS SDKs for different programming languages such as R, Python and Java.
SDKs for other languages can be created using [OpenAPI Generator](https://openapi-generator.tech/).
If you are interested in contributing, please have a look at our [contribution guidelines](CONTRIBUTING.md).

For more information about SIRIUS itself, see the [SIRIUS repository](https://github.com/sirius-ms/sirius) and [SIRIUS documentation](https://v6.docs.sirius-ms.io/).

## Libraries for different programming languages

#### [**Python**](client-api_python)  
  - For installation via **pip** from this repository see [here](client-api_python#installation--usage)
  - For installation via **conda** (conda-forge) see [here](https://anaconda.org/conda-forge/py-sirius-ms)
#### [**R**](client-api_r)
  - For installation from this repository see [here](client-api_r#getting-rsirius)
  - For installation via **conda** (conda-forge) see [here](https://anaconda.org/conda-forge/r-sirius-ms) 
#### [**Java**](https://github.com/sirius-ms/sirius/tree/stable/sirius-sdk)
The java SDK is part of the [SIRIUS project](https://github.com/sirius-ms/sirius) and will be updated with every SIRIUS release. Further instruction can be found [here](https://github.com/sirius-ms/sirius/tree/stable/sirius-sdk/README.md).

## Versioning

The client library versions are combinations of the **API version** and the **SIRIUS version**. Example: `v3.1+sirius6.3.3` is the client library for SIRIUS 6.3.3 with API version 3.1.

## Testing

Testing is automated in [PythonTest](.github/workflows/PythonTest.yml) and [RTest](.github/workflows/RTest.yml). For local testing we recommend following these approaches (refer also to [our contribution guidelines](CONTRIBUTING.md#testing-and-integration)). 

Note that our tests always assume the REST service running on port 8080 and that we start SIRIUS manually on this port. This is mainly due to GitHub runners having special layouts of e.g. file hierarchy. Automatic detection of port and PID by the `SiriusSDK` classes is tested in the conda-forge build process for Windows, macOS and Linux. If you make use of this, you need to remove the hardcoded port from the tests. 

Note also that our tests can **not** be run in parallel, due to the nature of them running on one instance of SIRIUS and many making use of our [tomato example dataset](.updater/clientTests/Data/tomato_small.sirius). If you run locally, make sure you download the tomato dataset and check that **all** paths in the tests are correct for your setup. The tests often depend on project spaces (which are files), and incorrectly setting paths may lead to files not being cleaned up properly. We recomment starting with `test_projects_api` ([Python Script](client-api_python/generated/test/test_projects_api.py), [R Script](client-api_r/generated/tests/testthat/test_projects_api.R)) to see if your setup works.