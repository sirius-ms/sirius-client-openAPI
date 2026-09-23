[![conda-forge | r-sirius-ms](https://img.shields.io/conda/vn/conda-forge/r-sirius-ms?logo=anaconda&label=r-sirius-ms)](https://anaconda.org/conda-forge/r-sirius-ms)
[![conda-forge | py-sirius-ms](https://img.shields.io/conda/vn/conda-forge/py-sirius-ms?logo=anaconda&label=py-sirius-ms)](https://anaconda.org/conda-forge/py-sirius-ms)
[![conda-forge | sirius-ms](https://img.shields.io/conda/vn/conda-forge/sirius-ms?logo=anaconda&label=sirius-ms)](https://anaconda.org/conda-forge/sirius-ms)
[![Java SDK](https://img.shields.io/badge/Java_SDK-GitLab/Maven-fc6d26?labelColor=555&logo=gitlab&logoColor=white)](https://gitlab.com/bright-giant/registry-public/-/packages/)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![DOI](https://img.shields.io/badge/DOI-10.1016%2Fj.xpro.2026.104771-blue)](https://doi.org/10.1016/j.xpro.2026.104771)


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

Note also that our tests can **not** be run in parallel, due to the nature of them running on one instance of SIRIUS and many making use of our [tomato example dataset](https://github.com/sirius-ms/sirius-client-openAPI/releases/download/tomato_small_projectspace/tomato_small.sirius). If you run locally, make sure you download the tomato dataset and check that **all** paths in the tests are correct for your setup. The tests often depend on project spaces (which are files), and incorrectly setting paths may lead to files not being cleaned up properly. We recomment starting with `test_projects_api` ([Python Script](client-api_python/generated/test/test_projects_api.py), [R Script](client-api_r/generated/tests/testthat/test_projects_api.R)) to see if your setup works.

<!-- repo-structure:start -->
## Repository structure

<pre>
.
├── <a href=".github">.github/</a>
│   ├── <a href=".github/workflows">workflows/</a>
│   │   ├── <a href=".github/workflows/NewUpdate.yml">NewUpdate.yml</a>
│   │   ├── <a href=".github/workflows/PythonTest.yml">PythonTest.yml</a>
│   │   ├── <a href=".github/workflows/RepoStructure.yml">RepoStructure.yml</a>
│   │   ├── <a href=".github/workflows/RManualGeneration.yml">RManualGeneration.yml</a>
│   │   ├── <a href=".github/workflows/RTest.yml">RTest.yml</a>
│   │   ├── <a href=".github/workflows/RunTests.yml">RunTests.yml</a>
│   │   ├── <a href=".github/workflows/SetupBranch.yml">SetupBranch.yml</a>
│   │   ├── <a href=".github/workflows/updater.yml">updater.yml</a>
│   │   └── <a href=".github/workflows/VersionTagger.yml">VersionTagger.yml</a>
│   └── <a href=".github/CommitID">CommitID</a>
├── <a href=".updater">.updater/</a>
│   ├── <a href=".updater/api">api/</a>
│   │   ├── <a href=".updater/api/api-docs-enums.json">api-docs-enums.json</a>
│   │   ├── <a href=".updater/api/api-docs-strings.json">api-docs-strings.json</a>
│   │   ├── <a href=".updater/api/packageVersion.txt">packageVersion.txt</a>
│   │   ├── <a href=".updater/api/sdk-surface-python.json">sdk-surface-python.json</a>
│   │   └── <a href=".updater/api/sdk-surface-r.json">sdk-surface-r.json</a>
│   ├── <a href=".updater/clientTests">clientTests/</a>
│   │   ├── <a href=".updater/clientTests/CondaFeedstockMinimalTests">CondaFeedstockMinimalTests/</a>
│   │   ├── <a href=".updater/clientTests/CondaFeedstockSuperMinimalTests">CondaFeedstockSuperMinimalTests/</a>
│   │   └── <a href=".updater/clientTests/Data">Data/</a>
│   ├── <a href=".updater/config">config/</a>
│   │   ├── <a href=".updater/config/Python">Python/</a>
│   │   └── <a href=".updater/config/R">R/</a>
│   └── <a href=".updater/tools">tools/</a>
│       ├── <a href=".updater/tools/api_compat_check.py">api_compat_check.py</a>
│       ├── <a href=".updater/tools/compat-accepted.json">compat-accepted.json</a>
│       ├── <a href=".updater/tools/render_compat_report.py">render_compat_report.py</a>
│       ├── <a href=".updater/tools/run_compat_check.sh">run_compat_check.sh</a>
│       ├── <a href=".updater/tools/sdk_compat_check.py">sdk_compat_check.py</a>
│       ├── <a href=".updater/tools/sdk_symbols.py">sdk_symbols.py</a>
│       ├── <a href=".updater/tools/sdk_symbols_r.R">sdk_symbols_r.R</a>
│       └── <a href=".updater/tools/update_repo_structure.py">update_repo_structure.py</a>
├── <a href="client-api_python">client-api_python/</a>
│   ├── <a href="client-api_python/formatting">formatting/</a>
│   │   └── <a href="client-api_python/formatting/format_init.sh">format_init.sh</a>
│   ├── <a href="client-api_python/generated">generated/</a>
│   ├── <a href="client-api_python/templates">templates/</a>
│   ├── <a href="client-api_python/LICENSE.txt">LICENSE.txt</a>
│   ├── <a href="client-api_python/pysirius_api.py">pysirius_api.py</a>
│   ├── <a href="client-api_python/pysirius_compat.py">pysirius_compat.py</a>
│   ├── <a href="client-api_python/pysirius_helper.py">pysirius_helper.py</a>
│   ├── <a href="client-api_python/pysirius_sdk.py">pysirius_sdk.py</a>
│   └── <a href="client-api_python/README.md">README.md</a>
├── <a href="client-api_r">client-api_r/</a>
│   ├── <a href="client-api_r/generated">generated/</a>
│   ├── <a href="client-api_r/patches">patches/</a>
│   │   ├── <a href="client-api_r/patches/insert_wait_for_job_completion_in_rsirius_api.sh">insert_wait_for_job_completion_in_rsirius_api.sh</a>
│   │   └── <a href="client-api_r/patches/list_syntax_fix.sh">list_syntax_fix.sh</a>
│   ├── <a href="client-api_r/templates">templates/</a>
│   ├── <a href="client-api_r/LICENSE.txt">LICENSE.txt</a>
│   ├── <a href="client-api_r/README.md">README.md</a>
│   ├── <a href="client-api_r/rsirius_compat.R">rsirius_compat.R</a>
│   ├── <a href="client-api_r/rsirius_helper.R">rsirius_helper.R</a>
│   └── <a href="client-api_r/rsirius_sdk.R">rsirius_sdk.R</a>
├── <a href=".gitattributes">.gitattributes</a>
├── <a href=".gitignore">.gitignore</a>
├── <a href="api-docs-enums.json">api-docs-enums.json</a>
├── <a href="api-docs-strings.json">api-docs-strings.json</a>
├── <a href="CONTRIBUTING.md">CONTRIBUTING.md</a>
├── <a href="LICENSE">LICENSE</a>
├── <a href="README.md">README.md</a>
└── <a href="SDK-COMPAT-PLAN.md">SDK-COMPAT-PLAN.md</a>
</pre>
<!-- repo-structure:end -->
