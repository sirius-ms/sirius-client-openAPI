# ComputationsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteJob**](ComputationsApi.md#deleteJob) | **DELETE** /api/projects/{projectId}/jobs/{jobId} | Delete job.
[**deleteJobConfig**](ComputationsApi.md#deleteJobConfig) | **DELETE** /api/job-configs/{name} | Delete job configuration with given name.
[**getDefaultJobConfig**](ComputationsApi.md#getDefaultJobConfig) | **GET** /api/default-job-config | Request default job configuration
[**getJob**](ComputationsApi.md#getJob) | **GET** /api/projects/{projectId}/jobs/{jobId} | Get job information and its current state and progress (if available).
[**getJobConfig**](ComputationsApi.md#getJobConfig) | **GET** /api/job-configs/{name} | Request job configuration with given name.
[**getJobConfigs**](ComputationsApi.md#getJobConfigs) | **GET** /api/job-configs | Request all available job configurations
[**getJobs**](ComputationsApi.md#getJobs) | **GET** /api/projects/{projectId}/jobs | Get job information and its current state and progress (if available).
[**postJobConfig**](ComputationsApi.md#postJobConfig) | **POST** /api/job-configs/{name} | Add new job configuration with given name.
[**startJob**](ComputationsApi.md#startJob) | **POST** /api/projects/{projectId}/jobs | Start computation for given compounds and with given parameters.
[**startJobFromConfig**](ComputationsApi.md#startJobFromConfig) | **POST** /api/projects/{projectId}/jobs-from-config | Start computation for given compounds and with parameters from a stored job-config.

<a name="deleteJob"></a>
# **deleteJob**
> deleteJob(projectId, jobId, cancelIfRunning, awaitDeletion)

Delete job.

Delete job. Specify how to behave for running jobs.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ComputationsApi;


ComputationsApi apiInstance = new ComputationsApi();
String projectId = "projectId_example"; // String | project-space to run jobs on
String jobId = "jobId_example"; // String | of the job to be deleted
Boolean cancelIfRunning = true; // Boolean | If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished.
Boolean awaitDeletion = true; // Boolean | If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished.
try {
    apiInstance.deleteJob(projectId, jobId, cancelIfRunning, awaitDeletion);
} catch (ApiException e) {
    System.err.println("Exception when calling ComputationsApi#deleteJob");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to run jobs on |
 **jobId** | **String**| of the job to be deleted |
 **cancelIfRunning** | **Boolean**| If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. | [optional] [default to true]
 **awaitDeletion** | **Boolean**| If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. | [optional] [default to true]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="deleteJobConfig"></a>
# **deleteJobConfig**
> deleteJobConfig(name)

Delete job configuration with given name.

Delete job configuration with given name.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ComputationsApi;


ComputationsApi apiInstance = new ComputationsApi();
String name = "name_example"; // String | name of the job-config to delete
try {
    apiInstance.deleteJobConfig(name);
} catch (ApiException e) {
    System.err.println("Exception when calling ComputationsApi#deleteJobConfig");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the job-config to delete |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getDefaultJobConfig"></a>
# **getDefaultJobConfig**
> JobSubmission getDefaultJobConfig(includeConfigMap)

Request default job configuration

Request default job configuration

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ComputationsApi;


ComputationsApi apiInstance = new ComputationsApi();
Boolean includeConfigMap = false; // Boolean | if true, generic configmap with-defaults will be included
try {
    JobSubmission result = apiInstance.getDefaultJobConfig(includeConfigMap);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ComputationsApi#getDefaultJobConfig");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeConfigMap** | **Boolean**| if true, generic configmap with-defaults will be included | [optional] [default to false]

### Return type

[**JobSubmission**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJob"></a>
# **getJob**
> JobId getJob(projectId, jobId, includeState, includeCommand, includeAffectedCompounds)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ComputationsApi;


ComputationsApi apiInstance = new ComputationsApi();
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
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to run jobs on |
 **jobId** | **String**| of the job to be returned |
 **includeState** | **Boolean**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to true]
 **includeCommand** | **Boolean**| include job command. | [optional] [default to false]
 **includeAffectedCompounds** | **Boolean**| include list of compound ids affected by this job (if available) | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJobConfig"></a>
# **getJobConfig**
> JobSubmission getJobConfig(name, includeConfigMap)

Request job configuration with given name.

Request job configuration with given name.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ComputationsApi;


ComputationsApi apiInstance = new ComputationsApi();
String name = "name_example"; // String | name of the job-config to return
Boolean includeConfigMap = false; // Boolean | if true the generic configmap will be part of the output
try {
    JobSubmission result = apiInstance.getJobConfig(name, includeConfigMap);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ComputationsApi#getJobConfig");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the job-config to return |
 **includeConfigMap** | **Boolean**| if true the generic configmap will be part of the output | [optional] [default to false]

### Return type

[**JobSubmission**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJobConfigs"></a>
# **getJobConfigs**
> List&lt;JobSubmission&gt; getJobConfigs(includeConfigMap)

Request all available job configurations

Request all available job configurations

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ComputationsApi;


ComputationsApi apiInstance = new ComputationsApi();
Boolean includeConfigMap = false; // Boolean | if true the generic configmap will be part of the output
try {
    List<JobSubmission> result = apiInstance.getJobConfigs(includeConfigMap);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ComputationsApi#getJobConfigs");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeConfigMap** | **Boolean**| if true the generic configmap will be part of the output | [optional] [default to false]

### Return type

[**List&lt;JobSubmission&gt;**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJobs"></a>
# **getJobs**
> List&lt;JobId&gt; getJobs(projectId, includeState, includeCommand, includeAffectedCompounds)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ComputationsApi;


ComputationsApi apiInstance = new ComputationsApi();
String projectId = "projectId_example"; // String | project-space to run jobs on
Boolean includeState = false; // Boolean | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states.
Boolean includeCommand = false; // Boolean | include job commands.
Boolean includeAffectedCompounds = false; // Boolean | include list of compound ids affected by this job (if available)
try {
    List<JobId> result = apiInstance.getJobs(projectId, includeState, includeCommand, includeAffectedCompounds);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ComputationsApi#getJobs");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to run jobs on |
 **includeState** | **Boolean**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states. | [optional] [default to false]
 **includeCommand** | **Boolean**| include job commands. | [optional] [default to false]
 **includeAffectedCompounds** | **Boolean**| include list of compound ids affected by this job (if available) | [optional] [default to false]

### Return type

[**List&lt;JobId&gt;**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="postJobConfig"></a>
# **postJobConfig**
> String postJobConfig(body, name, overrideExisting)

Add new job configuration with given name.

Add new job configuration with given name.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ComputationsApi;


ComputationsApi apiInstance = new ComputationsApi();
JobSubmission body = new JobSubmission(); // JobSubmission | to add
String name = "name_example"; // String | name of the job-config to add
Boolean overrideExisting = false; // Boolean | 
try {
    String result = apiInstance.postJobConfig(body, name, overrideExisting);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ComputationsApi#postJobConfig");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JobSubmission**](JobSubmission.md)| to add |
 **name** | **String**| name of the job-config to add |
 **overrideExisting** | **Boolean**|  | [optional] [default to false]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

<a name="startJob"></a>
# **startJob**
> JobId startJob(body, projectId, includeState, includeCommand, includeAffectedCompounds)

Start computation for given compounds and with given parameters.

Start computation for given compounds and with given parameters.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ComputationsApi;


ComputationsApi apiInstance = new ComputationsApi();
JobSubmission body = new JobSubmission(); // JobSubmission | configuration of the job that will be submitted of the job to be returned
String projectId = "projectId_example"; // String | project-space to run jobs on
Boolean includeState = true; // Boolean | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state.
Boolean includeCommand = true; // Boolean | include job command.
Boolean includeAffectedCompounds = false; // Boolean | include list of compound ids affected by this job (if available)
try {
    JobId result = apiInstance.startJob(body, projectId, includeState, includeCommand, includeAffectedCompounds);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ComputationsApi#startJob");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JobSubmission**](JobSubmission.md)| configuration of the job that will be submitted of the job to be returned |
 **projectId** | **String**| project-space to run jobs on |
 **includeState** | **Boolean**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to true]
 **includeCommand** | **Boolean**| include job command. | [optional] [default to true]
 **includeAffectedCompounds** | **Boolean**| include list of compound ids affected by this job (if available) | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="startJobFromConfig"></a>
# **startJobFromConfig**
> JobId startJobFromConfig(body, jobConfigName, projectId, recompute, includeState, includeCommand, includeAffectedCompounds)

Start computation for given compounds and with parameters from a stored job-config.

Start computation for given compounds and with parameters from a stored job-config.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ComputationsApi;


ComputationsApi apiInstance = new ComputationsApi();
List<String> body = Arrays.asList("body_example"); // List<String> | compound ids to be computed
String jobConfigName = "jobConfigName_example"; // String | name if the config to be used
String projectId = "projectId_example"; // String | project-space to run jobs on
Boolean recompute = true; // Boolean | enable or disable recompute. If null the stored value will be used.
Boolean includeState = true; // Boolean | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state.
Boolean includeCommand = true; // Boolean | include job command.
Boolean includeAffectedCompounds = false; // Boolean | include list of compound ids affected by this job (if available)
try {
    JobId result = apiInstance.startJobFromConfig(body, jobConfigName, projectId, recompute, includeState, includeCommand, includeAffectedCompounds);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ComputationsApi#startJobFromConfig");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**List&lt;String&gt;**](String.md)| compound ids to be computed |
 **jobConfigName** | **String**| name if the config to be used |
 **projectId** | **String**| project-space to run jobs on |
 **recompute** | **Boolean**| enable or disable recompute. If null the stored value will be used. | [optional]
 **includeState** | **Boolean**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to true]
 **includeCommand** | **Boolean**| include job command. | [optional] [default to true]
 **includeAffectedCompounds** | **Boolean**| include list of compound ids affected by this job (if available) | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

