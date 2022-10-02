# IO.Swagger.Api.ComputationsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteJob**](ComputationsApi.md#deletejob) | **DELETE** /api/projects/{projectId}/jobs/{jobId} | Delete job.
[**DeleteJobConfig**](ComputationsApi.md#deletejobconfig) | **DELETE** /api/job-configs/{name} | Delete job configuration with given name.
[**GetDefaultJobConfig**](ComputationsApi.md#getdefaultjobconfig) | **GET** /api/default-job-config | Request default job configuration
[**GetJob**](ComputationsApi.md#getjob) | **GET** /api/projects/{projectId}/jobs/{jobId} | Get job information and its current state and progress (if available).
[**GetJobConfig**](ComputationsApi.md#getjobconfig) | **GET** /api/job-configs/{name} | Request job configuration with given name.
[**GetJobConfigs**](ComputationsApi.md#getjobconfigs) | **GET** /api/job-configs | Request all available job configurations
[**GetJobs**](ComputationsApi.md#getjobs) | **GET** /api/projects/{projectId}/jobs | Get job information and its current state and progress (if available).
[**PostJobConfig**](ComputationsApi.md#postjobconfig) | **POST** /api/job-configs/{name} | Add new job configuration with given name.
[**StartJob**](ComputationsApi.md#startjob) | **POST** /api/projects/{projectId}/jobs | Start computation for given compounds and with given parameters.
[**StartJobFromConfig**](ComputationsApi.md#startjobfromconfig) | **POST** /api/projects/{projectId}/jobs-from-config | Start computation for given compounds and with parameters from a stored job-config.

<a name="deletejob"></a>
# **DeleteJob**
> void DeleteJob (string projectId, string jobId, bool? cancelIfRunning = null, bool? awaitDeletion = null)

Delete job.

Delete job. Specify how to behave for running jobs.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeleteJobExample
    {
        public void main()
        {
            var apiInstance = new ComputationsApi();
            var projectId = projectId_example;  // string | project-space to run jobs on
            var jobId = jobId_example;  // string | of the job to be deleted
            var cancelIfRunning = true;  // bool? | If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. (optional)  (default to true)
            var awaitDeletion = true;  // bool? | If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. (optional)  (default to true)

            try
            {
                // Delete job.
                apiInstance.DeleteJob(projectId, jobId, cancelIfRunning, awaitDeletion);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ComputationsApi.DeleteJob: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to run jobs on | 
 **jobId** | **string**| of the job to be deleted | 
 **cancelIfRunning** | **bool?**| If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. | [optional] [default to true]
 **awaitDeletion** | **bool?**| If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="deletejobconfig"></a>
# **DeleteJobConfig**
> void DeleteJobConfig (string name)

Delete job configuration with given name.

Delete job configuration with given name.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeleteJobConfigExample
    {
        public void main()
        {
            var apiInstance = new ComputationsApi();
            var name = name_example;  // string | name of the job-config to delete

            try
            {
                // Delete job configuration with given name.
                apiInstance.DeleteJobConfig(name);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ComputationsApi.DeleteJobConfig: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| name of the job-config to delete | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getdefaultjobconfig"></a>
# **GetDefaultJobConfig**
> JobSubmission GetDefaultJobConfig (bool? includeConfigMap = null)

Request default job configuration

Request default job configuration

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetDefaultJobConfigExample
    {
        public void main()
        {
            var apiInstance = new ComputationsApi();
            var includeConfigMap = true;  // bool? | if true, generic configmap with-defaults will be included (optional)  (default to false)

            try
            {
                // Request default job configuration
                JobSubmission result = apiInstance.GetDefaultJobConfig(includeConfigMap);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ComputationsApi.GetDefaultJobConfig: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeConfigMap** | **bool?**| if true, generic configmap with-defaults will be included | [optional] [default to false]

### Return type

[**JobSubmission**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getjob"></a>
# **GetJob**
> JobId GetJob (string projectId, string jobId, bool? includeState = null, bool? includeCommand = null, bool? includeAffectedCompounds = null)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetJobExample
    {
        public void main()
        {
            var apiInstance = new ComputationsApi();
            var projectId = projectId_example;  // string | project-space to run jobs on
            var jobId = jobId_example;  // string | of the job to be returned
            var includeState = true;  // bool? | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (optional)  (default to true)
            var includeCommand = true;  // bool? | include job command. (optional)  (default to false)
            var includeAffectedCompounds = true;  // bool? | include list of compound ids affected by this job (if available) (optional)  (default to false)

            try
            {
                // Get job information and its current state and progress (if available).
                JobId result = apiInstance.GetJob(projectId, jobId, includeState, includeCommand, includeAffectedCompounds);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ComputationsApi.GetJob: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to run jobs on | 
 **jobId** | **string**| of the job to be returned | 
 **includeState** | **bool?**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to true]
 **includeCommand** | **bool?**| include job command. | [optional] [default to false]
 **includeAffectedCompounds** | **bool?**| include list of compound ids affected by this job (if available) | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getjobconfig"></a>
# **GetJobConfig**
> JobSubmission GetJobConfig (string name, bool? includeConfigMap = null)

Request job configuration with given name.

Request job configuration with given name.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetJobConfigExample
    {
        public void main()
        {
            var apiInstance = new ComputationsApi();
            var name = name_example;  // string | name of the job-config to return
            var includeConfigMap = true;  // bool? | if true the generic configmap will be part of the output (optional)  (default to false)

            try
            {
                // Request job configuration with given name.
                JobSubmission result = apiInstance.GetJobConfig(name, includeConfigMap);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ComputationsApi.GetJobConfig: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| name of the job-config to return | 
 **includeConfigMap** | **bool?**| if true the generic configmap will be part of the output | [optional] [default to false]

### Return type

[**JobSubmission**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getjobconfigs"></a>
# **GetJobConfigs**
> List<JobSubmission> GetJobConfigs (bool? includeConfigMap = null)

Request all available job configurations

Request all available job configurations

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetJobConfigsExample
    {
        public void main()
        {
            var apiInstance = new ComputationsApi();
            var includeConfigMap = true;  // bool? | if true the generic configmap will be part of the output (optional)  (default to false)

            try
            {
                // Request all available job configurations
                List&lt;JobSubmission&gt; result = apiInstance.GetJobConfigs(includeConfigMap);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ComputationsApi.GetJobConfigs: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeConfigMap** | **bool?**| if true the generic configmap will be part of the output | [optional] [default to false]

### Return type

[**List<JobSubmission>**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getjobs"></a>
# **GetJobs**
> List<JobId> GetJobs (string projectId, bool? includeState = null, bool? includeCommand = null, bool? includeAffectedCompounds = null)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetJobsExample
    {
        public void main()
        {
            var apiInstance = new ComputationsApi();
            var projectId = projectId_example;  // string | project-space to run jobs on
            var includeState = true;  // bool? | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states. (optional)  (default to false)
            var includeCommand = true;  // bool? | include job commands. (optional)  (default to false)
            var includeAffectedCompounds = true;  // bool? | include list of compound ids affected by this job (if available) (optional)  (default to false)

            try
            {
                // Get job information and its current state and progress (if available).
                List&lt;JobId&gt; result = apiInstance.GetJobs(projectId, includeState, includeCommand, includeAffectedCompounds);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ComputationsApi.GetJobs: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to run jobs on | 
 **includeState** | **bool?**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states. | [optional] [default to false]
 **includeCommand** | **bool?**| include job commands. | [optional] [default to false]
 **includeAffectedCompounds** | **bool?**| include list of compound ids affected by this job (if available) | [optional] [default to false]

### Return type

[**List<JobId>**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="postjobconfig"></a>
# **PostJobConfig**
> string PostJobConfig (JobSubmission body, string name, bool? overrideExisting = null)

Add new job configuration with given name.

Add new job configuration with given name.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PostJobConfigExample
    {
        public void main()
        {
            var apiInstance = new ComputationsApi();
            var body = new JobSubmission(); // JobSubmission | to add
            var name = name_example;  // string | name of the job-config to add
            var overrideExisting = true;  // bool? |  (optional)  (default to false)

            try
            {
                // Add new job configuration with given name.
                string result = apiInstance.PostJobConfig(body, name, overrideExisting);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ComputationsApi.PostJobConfig: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JobSubmission**](JobSubmission.md)| to add | 
 **name** | **string**| name of the job-config to add | 
 **overrideExisting** | **bool?**|  | [optional] [default to false]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="startjob"></a>
# **StartJob**
> JobId StartJob (JobSubmission body, string projectId, bool? includeState = null, bool? includeCommand = null, bool? includeAffectedCompounds = null)

Start computation for given compounds and with given parameters.

Start computation for given compounds and with given parameters.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class StartJobExample
    {
        public void main()
        {
            var apiInstance = new ComputationsApi();
            var body = new JobSubmission(); // JobSubmission | configuration of the job that will be submitted of the job to be returned
            var projectId = projectId_example;  // string | project-space to run jobs on
            var includeState = true;  // bool? | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (optional)  (default to true)
            var includeCommand = true;  // bool? | include job command. (optional)  (default to true)
            var includeAffectedCompounds = true;  // bool? | include list of compound ids affected by this job (if available) (optional)  (default to false)

            try
            {
                // Start computation for given compounds and with given parameters.
                JobId result = apiInstance.StartJob(body, projectId, includeState, includeCommand, includeAffectedCompounds);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ComputationsApi.StartJob: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JobSubmission**](JobSubmission.md)| configuration of the job that will be submitted of the job to be returned | 
 **projectId** | **string**| project-space to run jobs on | 
 **includeState** | **bool?**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to true]
 **includeCommand** | **bool?**| include job command. | [optional] [default to true]
 **includeAffectedCompounds** | **bool?**| include list of compound ids affected by this job (if available) | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="startjobfromconfig"></a>
# **StartJobFromConfig**
> JobId StartJobFromConfig (List<string> body, string jobConfigName, string projectId, bool? recompute = null, bool? includeState = null, bool? includeCommand = null, bool? includeAffectedCompounds = null)

Start computation for given compounds and with parameters from a stored job-config.

Start computation for given compounds and with parameters from a stored job-config.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class StartJobFromConfigExample
    {
        public void main()
        {
            var apiInstance = new ComputationsApi();
            var body = new List<string>(); // List<string> | compound ids to be computed
            var jobConfigName = jobConfigName_example;  // string | name if the config to be used
            var projectId = projectId_example;  // string | project-space to run jobs on
            var recompute = true;  // bool? | enable or disable recompute. If null the stored value will be used. (optional) 
            var includeState = true;  // bool? | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (optional)  (default to true)
            var includeCommand = true;  // bool? | include job command. (optional)  (default to true)
            var includeAffectedCompounds = true;  // bool? | include list of compound ids affected by this job (if available) (optional)  (default to false)

            try
            {
                // Start computation for given compounds and with parameters from a stored job-config.
                JobId result = apiInstance.StartJobFromConfig(body, jobConfigName, projectId, recompute, includeState, includeCommand, includeAffectedCompounds);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ComputationsApi.StartJobFromConfig: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**List&lt;string&gt;**](string.md)| compound ids to be computed | 
 **jobConfigName** | **string**| name if the config to be used | 
 **projectId** | **string**| project-space to run jobs on | 
 **recompute** | **bool?**| enable or disable recompute. If null the stored value will be used. | [optional] 
 **includeState** | **bool?**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to true]
 **includeCommand** | **bool?**| include job command. | [optional] [default to true]
 **includeAffectedCompounds** | **bool?**| include list of compound ids affected by this job (if available) | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
