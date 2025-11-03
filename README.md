[![conda-forge | r-sirius-ms](https://img.shields.io/conda/vn/conda-forge/r-sirius-ms?logo=anaconda&label=r-sirius-ms)](https://anaconda.org/conda-forge/r-sirius-ms)
[![conda-forge | py-sirius-ms](https://img.shields.io/conda/vn/conda-forge/py-sirius-ms?logo=anaconda&label=py-sirius-ms)](https://anaconda.org/conda-forge/py-sirius-ms)
[![conda-forge | sirius-ms](https://img.shields.io/conda/vn/conda-forge/sirius-ms?logo=anaconda&label=sirius-ms)](https://anaconda.org/conda-forge/sirius-ms)
[![Java SDK](https://img.shields.io/badge/Java_SDK-GitLab/Maven-fc6d26?labelColor=555&logo=gitlab&logoColor=white)](https://gitlab.com/bright-giant/registry-public/-/packages/)

> [!WARNING]
> `Rsirius` is now `RSirius`! Starting with `v3.1+sirius6.3.3`, `Rsirius` is renamed to `RSirius` to fit the naming convention of `PySirius`. Please make sure you update your library imports accordingly!

# sirius-client-openAPI

Maintained and prebuild [OpenAPI](https://www.openapis.org/) based SIRIUS SDKs for different programming languages such as R, Python and Java.
SDKs for other languages can be created using [OpenAPI Generator](https://openapi-generator.tech/).
If you are interested in contributing, please have a look at our [contribution guidelines](#contributing-sirius-client-libraries).

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

# Contributing SIRIUS Client Libraries

We welcome contributions of SIRIUS client libraries in additional programming languages. This guide will walk you through the process of generating, customizing, testing, and contributing a new client library to the SIRIUS ecosystem.

## Prerequisites

Before you begin, you should familiarize yourself with the [OpenAPI Generator](https://openapi-generator.tech/) and thoroughly read through its [documentation](https://openapi-generator.tech/docs/installation/). The OpenAPI Generator is the foundation of our client library generation process, and understanding how it works will make the contribution process much smoother. The good news is that if your preferred programming language is among the [supported languages](https://openapi-generator.tech/docs/generators/), generating a client library will be relatively straightforward.

## Generation Process

### 1. Obtain API Documentation

The OpenAPI Generator requires a JSON specification file to generate client code. This file describes all the endpoints, data models, and operations of the SIRIUS REST API. You have two options for obtaining this specification:

**Option A: From a running SIRIUS instance**

If you have SIRIUS running locally, you can fetch the API documentation directly from the REST API endpoint using the following command:

```bash
wget -nv http://localhost:<PORT>/v3/api-docs -O api-docs-enums.json
```

Replace `<PORT>` with the actual port number where your SIRIUS instance is running. Note that we focus on all table endpoints and functions for the client libraries. To get only the stable docs, run SIRIUS with

```bash
sirius REST --api-mode=STABLE
```

**Option B: From this repository (recommended)**

The more convenient approach is to use one of the pre-generated API documentation files available in the [.updater/api/](.updater/api/) directory of this repository. We provide two variants of the specification to accommodate different language requirements. The enum-based variant is the standard version and should be used whenever possible. However, some programming languages like R do not have native support for enum types, so we also maintain a string-based variant that replaces enums with simple string types. The string based docs are the default, to get the enum based docs run SIRIUS with

```bash
sirius REST --api-mode=STABLE --enums-as-ref
```

Keep in mind that the documentation files in this repository always reflect the latest development build of SIRIUS. If you need to work with a specific SNAPSHOT version or a particular release, you'll need to extract the documentation manually using Option A from that specific SIRIUS version.

**Custom Configs**

The OpenAPI Generator can also take config files like the ones under [.updater/config/](.updater/config/) as input. These config files are used to set e.g. the `packageName` (like `RSirius` and `PySirius`) or things like `hideGenerationTimestamp`. We ask you to please set `"hideGenerationTimestamp": true` in your config. Otherwise, automatic updates will always commit a change in the timestamp, even if no code has changed.

### 2. Generate Client Code

Once you have the API specification file, you're ready to generate the client library. However, raw code generation is only the first step. We've established a sophisticated automation pipeline using GitHub workflows to handle not just generation, but also post-processing, bug fixes, and integration of custom components.

To understand our automated generation process, start by examining the [GitHub workflows](.github/workflows/) directory. Two workflows are particularly important for contributors. The [NewUpdate](.github/workflows/NewUpdate.yml) workflow orchestrates the entire generation and update process for all client libraries. Within this workflow, the `Update Clients` step is where the actual OpenAPI Generator is invoked to create the client code. Following this generation step, you'll notice several `Format XXX Package` steps for each supported language. These formatting steps are crucial because they apply language-specific bug fixes, add custom classes that cannot be auto-generated, and ensure the generated code meets our quality standards and integrates properly with the SIRIUS ecosystem.

The second important workflow is [RunTests](.github/workflows/RunTests.yml), which coordinates automated testing across all client libraries to ensure everything works correctly after generation and formatting.

### 3. Add Required Custom Components

While the OpenAPI Generator does an excellent job of creating API client code from the specification, there are certain components that cannot be automatically generated because they involve functionality specific to how SIRIUS operates as a background service. You'll need to implement these components manually for your target language.

**The SiriusSDK class** is the most critical custom component you'll need to create. This class handles the lifecycle management of the SIRIUS background process, including starting new instances, attaching to existing instances, and properly shutting down the service. Because this involves process management and inter-process communication specific to how SIRIUS runs, it cannot be inferred from the OpenAPI specification alone. The good news is that the logic and functionality needed in the SiriusSDK class are essentially the same across all programming languages, just implemented using language-specific syntax and libraries. You can use our existing implementations as blueprints: check out [pysirius_sdk.py](client-api_python/pysirius_sdk.py) for Python or [rsirius_sdk.R](client-api_r/rsirius_sdk.R) for R to see how we've structured this class and what methods it should provide.

**The central API class** is another important component, though whether you need to implement it manually depends on the capabilities of the OpenAPI Generator for your target language. This class serves as a unified access point that bundles all the individual API endpoints together, providing a more convenient interface for users. Some language generators, like the one for R, are sophisticated enough to generate this central API class automatically (see [rsirius_api.R](client-api_r/generated/R/rsirius_api.R) as an example). However, other generators, such as the Python one, require manual implementation of this central API class (see [PySiriusAPI](client-api_python/pysirius_api.py) for our Python implementation). You'll need to experiment with your target language's generator to see what it produces and fill in any gaps.

## Testing and Integration

### 4. Test Your Client Thoroughly

After generating your client library and implementing the necessary custom components, comprehensive testing is absolutely essential. You need to verify that all API functions work correctly, that the SiriusSDK properly manages the SIRIUS background process, and that the integration between generated and custom code is seamless. We maintain extensive test suites for our existing client libraries that you should use as references. For Python, examine the tests in [client-api_python/generated/test/](client-api_python/generated/test/), and for R, look at [client-api_r/generated/tests/testthat/](client-api_r/generated/tests/testthat/). Your test suite should cover all major API endpoints, error handling scenarios, and the full lifecycle of connecting to and disconnecting from SIRIUS.

Don't just run your tests once manually. The real value comes from automated testing that runs on every change. This brings us to the next step.

### 5. Create Automated Testing Workflow

Continuous integration is crucial for maintaining code quality as the SIRIUS API evolves. You should create a GitHub Actions workflow that automatically runs your test suite. This workflow will be triggered whenever there are changes to the codebase or when new versions of SIRIUS are released. Look at our existing testing workflows for guidance: [PythonTest](.github/workflows/PythonTest.yml) demonstrates how we test the Python client, while [RTest](.github/workflows/RTest.yml) shows the approach for R. Your workflow should set up the necessary environment for your target language, install dependencies, start a SIRIUS instance for testing, run the complete test suite, and report any failures.

Once you've created your testing workflow file, you need to integrate it into our main testing coordination workflow. Add a reference to your new workflow in [RunTests](.github/workflows/RunTests.yml), which serves as the central orchestrator that triggers all language-specific test workflows. This ensures your client library will be tested alongside all other SIRIUS clients whenever we run our comprehensive test suite.

### 6. Submit Your Pull Request

When you're confident that your client library is working correctly and all tests are passing, it's time to contribute your work back to the SIRIUS project. Prepare a pull request that includes all the necessary components. Your PR should contain the generation code properly integrated into the [NewUpdate](.github/workflows/NewUpdate.yml) workflow, including any post-processing steps needed for bug fixes or adding custom classes. Make sure you've included your custom SiriusSDK and any other manually implemented classes that couldn't be auto-generated. Finally, ensure your testing workflow is properly integrated into [RunTests](.github/workflows/RunTests.yml) so that your client library will be automatically tested in our CI/CD pipeline.

When you submit the pull request, provide a clear description of what language you're adding support for, any specific challenges you encountered, and any notable implementation decisions. The SIRIUS team will review your contribution, may provide feedback or request changes, and will work with you to get your client library merged into the main repository.

## After Your Contribution is Merged

Getting your client library merged into the SIRIUS repository is a significant achievement, but there's one more step that would greatly benefit the community. We currently distribute our client libraries through established package registries: Java clients are available via Maven Central, while R and Python clients can be installed through conda-forge. To make your contribution easily accessible to users in your target language's ecosystem, we strongly encourage you to publish it to the primary package registry for that language.

Publishing to a package registry makes installation trivial for end users and ensures your client library can be easily discovered by developers who might want to use SIRIUS in their projects. If you're unfamiliar with the publication process for your language's package registry, let us know and we can try to help guide you through it, or we can collaborate on getting it published together.

## Getting Help and Support

We understand that this process involves many moving parts, and our workflow setup can be complex even for experienced developers. The interaction between code generation, custom components, testing workflows, and CI/CD integration is not always straightforward. If you run into any issues, have questions about any step in the process, or just want to discuss your approach before diving in, please don't hesitate to reach out.

The best way to get help is through [GitHub Issues](https://github.com/sirius-ms/sirius-client-openAPI/issues) on this repository, where you can ask questions, report problems, or discuss your implementation plans. Issues are public, so other contributors can benefit from the discussion as well. Alternatively, you can join our [Matrix channel](https://matrix.to/#/%23sirius-ms:gitter.im) for more real-time communication with the SIRIUS development team and community.

---

**Thank you for your interest in contributing to SIRIUS! We truly appreciate every effort to expand SIRIUS's reach to new programming languages and communities.**
