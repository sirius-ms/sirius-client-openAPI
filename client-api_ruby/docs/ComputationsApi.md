# RubySirius::ComputationsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_job**](ComputationsApi.md#delete_job) | **DELETE** /api/projects/{projectId}/jobs/{jobId} | Delete job.
[**delete_job_config**](ComputationsApi.md#delete_job_config) | **DELETE** /api/job-configs/{name} | Delete job configuration with given name.
[**get_default_job_config**](ComputationsApi.md#get_default_job_config) | **GET** /api/default-job-config | Request default job configuration
[**get_job**](ComputationsApi.md#get_job) | **GET** /api/projects/{projectId}/jobs/{jobId} | Get job information and its current state and progress (if available).
[**get_job_config**](ComputationsApi.md#get_job_config) | **GET** /api/job-configs/{name} | Request job configuration with given name.
[**get_job_configs**](ComputationsApi.md#get_job_configs) | **GET** /api/job-configs | Request all available job configurations
[**get_jobs**](ComputationsApi.md#get_jobs) | **GET** /api/projects/{projectId}/jobs | Get job information and its current state and progress (if available).
[**post_job_config**](ComputationsApi.md#post_job_config) | **POST** /api/job-configs/{name} | Add new job configuration with given name.
[**start_job**](ComputationsApi.md#start_job) | **POST** /api/projects/{projectId}/jobs | Start computation for given compounds and with given parameters.
[**start_job_from_config**](ComputationsApi.md#start_job_from_config) | **POST** /api/projects/{projectId}/jobs-from-config | Start computation for given compounds and with parameters from a stored job-config.

# **delete_job**
> delete_job(project_id, job_id, opts)

Delete job.

Delete job. Specify how to behave for running jobs.

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ComputationsApi.new
project_id = 'project_id_example' # String | project-space to run jobs on
job_id = 'job_id_example' # String | of the job to be deleted
opts = { 
  cancel_if_running: true, # BOOLEAN | If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished.
  await_deletion: true # BOOLEAN | If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished.
}

begin
  #Delete job.
  api_instance.delete_job(project_id, job_id, opts)
rescue RubySirius::ApiError => e
  puts "Exception when calling ComputationsApi->delete_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| project-space to run jobs on | 
 **job_id** | **String**| of the job to be deleted | 
 **cancel_if_running** | **BOOLEAN**| If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. | [optional] [default to true]
 **await_deletion** | **BOOLEAN**| If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. | [optional] [default to true]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_job_config**
> delete_job_config(name)

Delete job configuration with given name.

Delete job configuration with given name.

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ComputationsApi.new
name = 'name_example' # String | name of the job-config to delete


begin
  #Delete job configuration with given name.
  api_instance.delete_job_config(name)
rescue RubySirius::ApiError => e
  puts "Exception when calling ComputationsApi->delete_job_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the job-config to delete | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_default_job_config**
> JobSubmission get_default_job_config(opts)

Request default job configuration

Request default job configuration

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ComputationsApi.new
opts = { 
  include_config_map: false # BOOLEAN | if true, generic configmap with-defaults will be included
}

begin
  #Request default job configuration
  result = api_instance.get_default_job_config(opts)
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling ComputationsApi->get_default_job_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_config_map** | **BOOLEAN**| if true, generic configmap with-defaults will be included | [optional] [default to false]

### Return type

[**JobSubmission**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_job**
> JobId get_job(project_id, job_id, opts)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ComputationsApi.new
project_id = 'project_id_example' # String | project-space to run jobs on
job_id = 'job_id_example' # String | of the job to be returned
opts = { 
  include_state: true, # BOOLEAN | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state.
  include_command: false, # BOOLEAN | include job command.
  include_affected_compounds: false # BOOLEAN | include list of compound ids affected by this job (if available)
}

begin
  #Get job information and its current state and progress (if available).
  result = api_instance.get_job(project_id, job_id, opts)
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling ComputationsApi->get_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| project-space to run jobs on | 
 **job_id** | **String**| of the job to be returned | 
 **include_state** | **BOOLEAN**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to true]
 **include_command** | **BOOLEAN**| include job command. | [optional] [default to false]
 **include_affected_compounds** | **BOOLEAN**| include list of compound ids affected by this job (if available) | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_job_config**
> JobSubmission get_job_config(name, opts)

Request job configuration with given name.

Request job configuration with given name.

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ComputationsApi.new
name = 'name_example' # String | name of the job-config to return
opts = { 
  include_config_map: false # BOOLEAN | if true the generic configmap will be part of the output
}

begin
  #Request job configuration with given name.
  result = api_instance.get_job_config(name, opts)
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling ComputationsApi->get_job_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the job-config to return | 
 **include_config_map** | **BOOLEAN**| if true the generic configmap will be part of the output | [optional] [default to false]

### Return type

[**JobSubmission**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_job_configs**
> Array&lt;JobSubmission&gt; get_job_configs(opts)

Request all available job configurations

Request all available job configurations

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ComputationsApi.new
opts = { 
  include_config_map: false # BOOLEAN | if true the generic configmap will be part of the output
}

begin
  #Request all available job configurations
  result = api_instance.get_job_configs(opts)
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling ComputationsApi->get_job_configs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_config_map** | **BOOLEAN**| if true the generic configmap will be part of the output | [optional] [default to false]

### Return type

[**Array&lt;JobSubmission&gt;**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_jobs**
> Array&lt;JobId&gt; get_jobs(project_id, opts)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ComputationsApi.new
project_id = 'project_id_example' # String | project-space to run jobs on
opts = { 
  include_state: false, # BOOLEAN | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states.
  include_command: false, # BOOLEAN | include job commands.
  include_affected_compounds: false # BOOLEAN | include list of compound ids affected by this job (if available)
}

begin
  #Get job information and its current state and progress (if available).
  result = api_instance.get_jobs(project_id, opts)
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling ComputationsApi->get_jobs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| project-space to run jobs on | 
 **include_state** | **BOOLEAN**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states. | [optional] [default to false]
 **include_command** | **BOOLEAN**| include job commands. | [optional] [default to false]
 **include_affected_compounds** | **BOOLEAN**| include list of compound ids affected by this job (if available) | [optional] [default to false]

### Return type

[**Array&lt;JobId&gt;**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_job_config**
> String post_job_config(bodyname, opts)

Add new job configuration with given name.

Add new job configuration with given name.

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ComputationsApi.new
body = RubySirius::JobSubmission.new # JobSubmission | to add
name = 'name_example' # String | name of the job-config to add
opts = { 
  override_existing: false # BOOLEAN | 
}

begin
  #Add new job configuration with given name.
  result = api_instance.post_job_config(bodyname, opts)
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling ComputationsApi->post_job_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JobSubmission**](JobSubmission.md)| to add | 
 **name** | **String**| name of the job-config to add | 
 **override_existing** | **BOOLEAN**|  | [optional] [default to false]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain



# **start_job**
> JobId start_job(bodyproject_id, opts)

Start computation for given compounds and with given parameters.

Start computation for given compounds and with given parameters.

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ComputationsApi.new
body = RubySirius::JobSubmission.new # JobSubmission | configuration of the job that will be submitted of the job to be returned
project_id = 'project_id_example' # String | project-space to run jobs on
opts = { 
  include_state: true # BOOLEAN | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state.
  include_command: true # BOOLEAN | include job command.
  include_affected_compounds: false # BOOLEAN | include list of compound ids affected by this job (if available)
}

begin
  #Start computation for given compounds and with given parameters.
  result = api_instance.start_job(bodyproject_id, opts)
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling ComputationsApi->start_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JobSubmission**](JobSubmission.md)| configuration of the job that will be submitted of the job to be returned | 
 **project_id** | **String**| project-space to run jobs on | 
 **include_state** | **BOOLEAN**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to true]
 **include_command** | **BOOLEAN**| include job command. | [optional] [default to true]
 **include_affected_compounds** | **BOOLEAN**| include list of compound ids affected by this job (if available) | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **start_job_from_config**
> JobId start_job_from_config(bodyjob_config_nameproject_id, opts)

Start computation for given compounds and with parameters from a stored job-config.

Start computation for given compounds and with parameters from a stored job-config.

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ComputationsApi.new
body = ['body_example'] # Array<String> | compound ids to be computed
job_config_name = 'job_config_name_example' # String | name if the config to be used
project_id = 'project_id_example' # String | project-space to run jobs on
opts = { 
  recompute: true # BOOLEAN | enable or disable recompute. If null the stored value will be used.
  include_state: true # BOOLEAN | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state.
  include_command: true # BOOLEAN | include job command.
  include_affected_compounds: false # BOOLEAN | include list of compound ids affected by this job (if available)
}

begin
  #Start computation for given compounds and with parameters from a stored job-config.
  result = api_instance.start_job_from_config(bodyjob_config_nameproject_id, opts)
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling ComputationsApi->start_job_from_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Array&lt;String&gt;**](String.md)| compound ids to be computed | 
 **job_config_name** | **String**| name if the config to be used | 
 **project_id** | **String**| project-space to run jobs on | 
 **recompute** | **BOOLEAN**| enable or disable recompute. If null the stored value will be used. | [optional] 
 **include_state** | **BOOLEAN**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to true]
 **include_command** | **BOOLEAN**| include job command. | [optional] [default to true]
 **include_affected_compounds** | **BOOLEAN**| include list of compound ids affected by this job (if available) | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



