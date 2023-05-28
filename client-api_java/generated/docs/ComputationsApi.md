# ComputationsApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteJob**](ComputationsApi.md#deleteJob) | **DELETE** /api/projects/{projectId}/jobs/{jobId} | Delete job. |
| [**deleteJobConfig**](ComputationsApi.md#deleteJobConfig) | **DELETE** /api/job-configs/{name} | Delete job configuration with given name. |
| [**getDefaultJobConfig**](ComputationsApi.md#getDefaultJobConfig) | **GET** /api/default-job-config | Request default job configuration |
| [**getJob**](ComputationsApi.md#getJob) | **GET** /api/projects/{projectId}/jobs/{jobId} | Get job information and its current state and progress (if available). |
| [**getJobConfig**](ComputationsApi.md#getJobConfig) | **GET** /api/job-configs/{name} | Request job configuration with given name. |
| [**getJobConfigs**](ComputationsApi.md#getJobConfigs) | **GET** /api/job-configs | Request all available job configurations |
| [**getJobs**](ComputationsApi.md#getJobs) | **GET** /api/projects/{projectId}/jobs | Get job information and its current state and progress (if available). |
| [**postJobConfig**](ComputationsApi.md#postJobConfig) | **POST** /api/job-configs/{name} | Add new job configuration with given name. |
| [**startJob**](ComputationsApi.md#startJob) | **POST** /api/projects/{projectId}/jobs | Start computation for given compounds and with given parameters. |
| [**startJobFromConfig**](ComputationsApi.md#startJobFromConfig) | **POST** /api/projects/{projectId}/jobs-from-config | Start computation for given compounds and with parameters from a stored job-config. |


<a name="deleteJob"></a>
# **deleteJob**
> deleteJob(projectId, jobId, cancelIfRunning, awaitDeletion)

Delete job.

Delete job. Specify how to behave for running jobs.

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.ComputationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    ComputationsApi apiInstance = new ComputationsApi(defaultClient);
    String projectId = "projectId_example"; // String | project-space to run jobs on
    String jobId = "jobId_example"; // String | of the job to be deleted
    Boolean cancelIfRunning = true; // Boolean | If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished.
    Boolean awaitDeletion = true; // Boolean | If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished.
    try {
      apiInstance.deleteJob(projectId, jobId, cancelIfRunning, awaitDeletion);
    } catch (ApiException e) {
      System.err.println("Exception when calling ComputationsApi#deleteJob");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **String**| project-space to run jobs on | |
| **jobId** | **String**| of the job to be deleted | |
| **cancelIfRunning** | **Boolean**| If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. | [optional] [default to true] |
| **awaitDeletion** | **Boolean**| If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. | [optional] [default to true] |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Accepted |  -  |

<a name="deleteJobConfig"></a>
# **deleteJobConfig**
> deleteJobConfig(name)

Delete job configuration with given name.

Delete job configuration with given name.

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.ComputationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    ComputationsApi apiInstance = new ComputationsApi(defaultClient);
    String name = "name_example"; // String | name of the job-config to delete
    try {
      apiInstance.deleteJobConfig(name);
    } catch (ApiException e) {
      System.err.println("Exception when calling ComputationsApi#deleteJobConfig");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| name of the job-config to delete | |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Accepted |  -  |

<a name="getDefaultJobConfig"></a>
# **getDefaultJobConfig**
> JobSubmission getDefaultJobConfig(includeConfigMap)

Request default job configuration

Request default job configuration

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.ComputationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    ComputationsApi apiInstance = new ComputationsApi(defaultClient);
    Boolean includeConfigMap = false; // Boolean | if true, generic configmap with-defaults will be included
    try {
      JobSubmission result = apiInstance.getDefaultJobConfig(includeConfigMap);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ComputationsApi#getDefaultJobConfig");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **includeConfigMap** | **Boolean**| if true, generic configmap with-defaults will be included | [optional] [default to false] |

### Return type

[**JobSubmission**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | {@link JobSubmission JobSubmission} with all parameters set to default values. |  -  |

<a name="getJob"></a>
# **getJob**
> JobId getJob(projectId, jobId, includeState, includeCommand, includeAffectedCompounds)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.ComputationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    ComputationsApi apiInstance = new ComputationsApi(defaultClient);
    String projectId = "projectId_example"; // String | project-space to run jobs on
    String jobId = "jobId_example"; // String | of the job to be returned
    Boolean includeState = true; // Boolean | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state.
    Boolean includeCommand = false; // Boolean | include job command.
    Boolean includeAffectedCompounds = false; // Boolean | include list of compound ids affected by this job (if available)
    try {
      JobId result = apiInstance.getJob(projectId, jobId, includeState, includeCommand, includeAffectedCompounds);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ComputationsApi#getJob");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **String**| project-space to run jobs on | |
| **jobId** | **String**| of the job to be returned | |
| **includeState** | **Boolean**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to true] |
| **includeCommand** | **Boolean**| include job command. | [optional] [default to false] |
| **includeAffectedCompounds** | **Boolean**| include list of compound ids affected by this job (if available) | [optional] [default to false] |

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a name="getJobConfig"></a>
# **getJobConfig**
> JobSubmission getJobConfig(name, includeConfigMap)

Request job configuration with given name.

Request job configuration with given name.

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.ComputationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    ComputationsApi apiInstance = new ComputationsApi(defaultClient);
    String name = "name_example"; // String | name of the job-config to return
    Boolean includeConfigMap = false; // Boolean | if true the generic configmap will be part of the output
    try {
      JobSubmission result = apiInstance.getJobConfig(name, includeConfigMap);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ComputationsApi#getJobConfig");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| name of the job-config to return | |
| **includeConfigMap** | **Boolean**| if true the generic configmap will be part of the output | [optional] [default to false] |

### Return type

[**JobSubmission**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | {@link JobSubmission JobSubmission} for given name. |  -  |

<a name="getJobConfigs"></a>
# **getJobConfigs**
> List&lt;JobSubmission&gt; getJobConfigs(includeConfigMap)

Request all available job configurations

Request all available job configurations

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.ComputationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    ComputationsApi apiInstance = new ComputationsApi(defaultClient);
    Boolean includeConfigMap = false; // Boolean | if true the generic configmap will be part of the output
    try {
      List<JobSubmission> result = apiInstance.getJobConfigs(includeConfigMap);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ComputationsApi#getJobConfigs");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **includeConfigMap** | **Boolean**| if true the generic configmap will be part of the output | [optional] [default to false] |

### Return type

[**List&lt;JobSubmission&gt;**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | list of available {@link JobSubmission JobSubmission}s |  -  |

<a name="getJobs"></a>
# **getJobs**
> List&lt;JobId&gt; getJobs(projectId, includeState, includeCommand, includeAffectedCompounds)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.ComputationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    ComputationsApi apiInstance = new ComputationsApi(defaultClient);
    String projectId = "projectId_example"; // String | project-space to run jobs on
    Boolean includeState = false; // Boolean | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states.
    Boolean includeCommand = false; // Boolean | include job commands.
    Boolean includeAffectedCompounds = false; // Boolean | include list of compound ids affected by this job (if available)
    try {
      List<JobId> result = apiInstance.getJobs(projectId, includeState, includeCommand, includeAffectedCompounds);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ComputationsApi#getJobs");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **String**| project-space to run jobs on | |
| **includeState** | **Boolean**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states. | [optional] [default to false] |
| **includeCommand** | **Boolean**| include job commands. | [optional] [default to false] |
| **includeAffectedCompounds** | **Boolean**| include list of compound ids affected by this job (if available) | [optional] [default to false] |

### Return type

[**List&lt;JobId&gt;**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a name="postJobConfig"></a>
# **postJobConfig**
> String postJobConfig(name, jobSubmission, overrideExisting)

Add new job configuration with given name.

Add new job configuration with given name.

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.ComputationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    ComputationsApi apiInstance = new ComputationsApi(defaultClient);
    String name = "name_example"; // String | name of the job-config to add
    JobSubmission jobSubmission = new JobSubmission(); // JobSubmission | to add
    Boolean overrideExisting = false; // Boolean | 
    try {
      String result = apiInstance.postJobConfig(name, jobSubmission, overrideExisting);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ComputationsApi#postJobConfig");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| name of the job-config to add | |
| **jobSubmission** | [**JobSubmission**](JobSubmission.md)| to add | |
| **overrideExisting** | **Boolean**|  | [optional] [default to false] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Probably modified name of the config (to ensure filesystem path compatibility). |  -  |

<a name="startJob"></a>
# **startJob**
> JobId startJob(projectId, jobSubmission, includeState, includeCommand, includeAffectedCompounds)

Start computation for given compounds and with given parameters.

Start computation for given compounds and with given parameters.

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.ComputationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    ComputationsApi apiInstance = new ComputationsApi(defaultClient);
    String projectId = "projectId_example"; // String | project-space to run jobs on
    JobSubmission jobSubmission = new JobSubmission(); // JobSubmission | configuration of the job that will be submitted of the job to be returned
    Boolean includeState = true; // Boolean | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state.
    Boolean includeCommand = true; // Boolean | include job command.
    Boolean includeAffectedCompounds = false; // Boolean | include list of compound ids affected by this job (if available)
    try {
      JobId result = apiInstance.startJob(projectId, jobSubmission, includeState, includeCommand, includeAffectedCompounds);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ComputationsApi#startJob");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **String**| project-space to run jobs on | |
| **jobSubmission** | [**JobSubmission**](JobSubmission.md)| configuration of the job that will be submitted of the job to be returned | |
| **includeState** | **Boolean**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to true] |
| **includeCommand** | **Boolean**| include job command. | [optional] [default to true] |
| **includeAffectedCompounds** | **Boolean**| include list of compound ids affected by this job (if available) | [optional] [default to false] |

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Accepted |  -  |

<a name="startJobFromConfig"></a>
# **startJobFromConfig**
> JobId startJobFromConfig(projectId, jobConfigName, requestBody, recompute, includeState, includeCommand, includeAffectedCompounds)

Start computation for given compounds and with parameters from a stored job-config.

Start computation for given compounds and with parameters from a stored job-config.

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.ComputationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    ComputationsApi apiInstance = new ComputationsApi(defaultClient);
    String projectId = "projectId_example"; // String | project-space to run jobs on
    String jobConfigName = "jobConfigName_example"; // String | name if the config to be used
    List<String> requestBody = Arrays.asList(); // List<String> | compound ids to be computed
    Boolean recompute = true; // Boolean | enable or disable recompute. If null the stored value will be used.
    Boolean includeState = true; // Boolean | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state.
    Boolean includeCommand = true; // Boolean | include job command.
    Boolean includeAffectedCompounds = false; // Boolean | include list of compound ids affected by this job (if available)
    try {
      JobId result = apiInstance.startJobFromConfig(projectId, jobConfigName, requestBody, recompute, includeState, includeCommand, includeAffectedCompounds);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ComputationsApi#startJobFromConfig");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **String**| project-space to run jobs on | |
| **jobConfigName** | **String**| name if the config to be used | |
| **requestBody** | [**List&lt;String&gt;**](String.md)| compound ids to be computed | |
| **recompute** | **Boolean**| enable or disable recompute. If null the stored value will be used. | [optional] |
| **includeState** | **Boolean**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to true] |
| **includeCommand** | **Boolean**| include job command. | [optional] [default to true] |
| **includeAffectedCompounds** | **Boolean**| include list of compound ids affected by this job (if available) | [optional] [default to false] |

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Accepted |  -  |

