# PySirius.SearchableDatabasesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_databases**](SearchableDatabasesApi.md#add_databases) | **POST** /api/databases | 
[**create_database**](SearchableDatabasesApi.md#create_database) | **POST** /api/databases/{databaseId} | 
[**get_custom_databases**](SearchableDatabasesApi.md#get_custom_databases) | **GET** /api/databases/custom | 
[**get_database**](SearchableDatabasesApi.md#get_database) | **GET** /api/databases/{databaseId} | 
[**get_databases**](SearchableDatabasesApi.md#get_databases) | **GET** /api/databases | 
[**get_included_databases**](SearchableDatabasesApi.md#get_included_databases) | **GET** /api/databases/included | 
[**import_into_database**](SearchableDatabasesApi.md#import_into_database) | **POST** /api/databases/{databaseId}/import/from-files | Start import of structure and spectra files into the specified database.
[**import_into_database_as_job**](SearchableDatabasesApi.md#import_into_database_as_job) | **POST** /api/databases/{databaseId}/import/from-files-job | Start import of structure and spectra files into the specified database.
[**remove_database**](SearchableDatabasesApi.md#remove_database) | **DELETE** /api/databases/{databaseId} | 
[**update_database**](SearchableDatabasesApi.md#update_database) | **PUT** /api/databases/{databaseId} | 


# **add_databases**
> List[SearchableDatabase] add_databases(request_body)



### Example


```python
import PySirius
from PySirius.models.searchable_database import SearchableDatabase
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.SearchableDatabasesApi(api_client)
    request_body = ['request_body_example'] # List[str] | 

    try:
        api_response = api_instance.add_databases(request_body)
        print("The response of SearchableDatabasesApi->add_databases:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->add_databases: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**List[str]**](str.md)|  | 

### Return type

[**List[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_database**
> SearchableDatabase create_database(database_id, searchable_database_parameters=searchable_database_parameters)



### Example


```python
import PySirius
from PySirius.models.searchable_database import SearchableDatabase
from PySirius.models.searchable_database_parameters import SearchableDatabaseParameters
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.SearchableDatabasesApi(api_client)
    database_id = 'database_id_example' # str | 
    searchable_database_parameters = PySirius.SearchableDatabaseParameters() # SearchableDatabaseParameters |  (optional)

    try:
        api_response = api_instance.create_database(database_id, searchable_database_parameters=searchable_database_parameters)
        print("The response of SearchableDatabasesApi->create_database:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->create_database: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **str**|  | 
 **searchable_database_parameters** | [**SearchableDatabaseParameters**](SearchableDatabaseParameters.md)|  | [optional] 

### Return type

[**SearchableDatabase**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_custom_databases**
> List[SearchableDatabase] get_custom_databases(include_stats=include_stats)



### Example


```python
import PySirius
from PySirius.models.searchable_database import SearchableDatabase
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.SearchableDatabasesApi(api_client)
    include_stats = False # bool |  (optional) (default to False)

    try:
        api_response = api_instance.get_custom_databases(include_stats=include_stats)
        print("The response of SearchableDatabasesApi->get_custom_databases:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->get_custom_databases: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_stats** | **bool**|  | [optional] [default to False]

### Return type

[**List[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_database**
> SearchableDatabase get_database(database_id, include_stats=include_stats)



### Example


```python
import PySirius
from PySirius.models.searchable_database import SearchableDatabase
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.SearchableDatabasesApi(api_client)
    database_id = 'database_id_example' # str | 
    include_stats = True # bool |  (optional) (default to True)

    try:
        api_response = api_instance.get_database(database_id, include_stats=include_stats)
        print("The response of SearchableDatabasesApi->get_database:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->get_database: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **str**|  | 
 **include_stats** | **bool**|  | [optional] [default to True]

### Return type

[**SearchableDatabase**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_databases**
> List[SearchableDatabase] get_databases(include_stats=include_stats)



### Example


```python
import PySirius
from PySirius.models.searchable_database import SearchableDatabase
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.SearchableDatabasesApi(api_client)
    include_stats = False # bool |  (optional) (default to False)

    try:
        api_response = api_instance.get_databases(include_stats=include_stats)
        print("The response of SearchableDatabasesApi->get_databases:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->get_databases: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_stats** | **bool**|  | [optional] [default to False]

### Return type

[**List[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_included_databases**
> List[SearchableDatabase] get_included_databases(include_stats=include_stats)



### Example


```python
import PySirius
from PySirius.models.searchable_database import SearchableDatabase
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.SearchableDatabasesApi(api_client)
    include_stats = False # bool |  (optional) (default to False)

    try:
        api_response = api_instance.get_included_databases(include_stats=include_stats)
        print("The response of SearchableDatabasesApi->get_included_databases:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->get_included_databases: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_stats** | **bool**|  | [optional] [default to False]

### Return type

[**List[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_into_database**
> SearchableDatabase import_into_database(database_id, buffer_size=buffer_size, input_files=input_files)

Start import of structure and spectra files into the specified database.

Start import of structure and spectra files into the specified database.

### Example


```python
import PySirius
from PySirius.models.searchable_database import SearchableDatabase
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.SearchableDatabasesApi(api_client)
    database_id = 'database_id_example' # str | database to import into
    buffer_size = 1000 # int |  (optional) (default to 1000)
    input_files = None # List[bytearray] |  (optional)

    try:
        # Start import of structure and spectra files into the specified database.
        api_response = api_instance.import_into_database(database_id, buffer_size=buffer_size, input_files=input_files)
        print("The response of SearchableDatabasesApi->import_into_database:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->import_into_database: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **str**| database to import into | 
 **buffer_size** | **int**|  | [optional] [default to 1000]
 **input_files** | **List[bytearray]**|  | [optional] 

### Return type

[**SearchableDatabase**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Job of the import command to be executed. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_into_database_as_job**
> Job import_into_database_as_job(database_id, buffer_size=buffer_size, opt_fields=opt_fields, input_files=input_files)

Start import of structure and spectra files into the specified database.

Start import of structure and spectra files into the specified database.

### Example


```python
import PySirius
from PySirius.models.job import Job
from PySirius.models.job_opt_field import JobOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.SearchableDatabasesApi(api_client)
    database_id = 'database_id_example' # str | database to import into
    buffer_size = 1000 # int |  (optional) (default to 1000)
    opt_fields = ["progress"] # List[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["progress"])
    input_files = None # List[bytearray] |  (optional)

    try:
        # Start import of structure and spectra files into the specified database.
        api_response = api_instance.import_into_database_as_job(database_id, buffer_size=buffer_size, opt_fields=opt_fields, input_files=input_files)
        print("The response of SearchableDatabasesApi->import_into_database_as_job:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->import_into_database_as_job: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **str**| database to import into | 
 **buffer_size** | **int**|  | [optional] [default to 1000]
 **opt_fields** | [**List[JobOptField]**](JobOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;progress&quot;]]
 **input_files** | **List[bytearray]**|  | [optional] 

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Job of the import command to be executed. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_database**
> remove_database(database_id, delete=delete)



### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.SearchableDatabasesApi(api_client)
    database_id = 'database_id_example' # str | 
    delete = False # bool |  (optional) (default to False)

    try:
        api_instance.remove_database(database_id, delete=delete)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->remove_database: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **str**|  | 
 **delete** | **bool**|  | [optional] [default to False]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_database**
> SearchableDatabase update_database(database_id, searchable_database_parameters=searchable_database_parameters)



### Example


```python
import PySirius
from PySirius.models.searchable_database import SearchableDatabase
from PySirius.models.searchable_database_parameters import SearchableDatabaseParameters
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.SearchableDatabasesApi(api_client)
    database_id = 'database_id_example' # str | 
    searchable_database_parameters = PySirius.SearchableDatabaseParameters() # SearchableDatabaseParameters |  (optional)

    try:
        api_response = api_instance.update_database(database_id, searchable_database_parameters=searchable_database_parameters)
        print("The response of SearchableDatabasesApi->update_database:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->update_database: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **str**|  | 
 **searchable_database_parameters** | [**SearchableDatabaseParameters**](SearchableDatabaseParameters.md)|  | [optional] 

### Return type

[**SearchableDatabase**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

