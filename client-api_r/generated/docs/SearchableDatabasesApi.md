# SearchableDatabasesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddDatabases**](SearchableDatabasesApi.md#AddDatabases) | **POST** /api/databases | DEPRECATED: this endpoint is based on local file paths and will likely be replaced in future versions of this API.
[**CreateDatabase**](SearchableDatabasesApi.md#CreateDatabase) | **POST** /api/databases/{databaseId} | 
[**GetCustomDatabases**](SearchableDatabasesApi.md#GetCustomDatabases) | **GET** /api/databases/custom | 
[**GetDatabase**](SearchableDatabasesApi.md#GetDatabase) | **GET** /api/databases/{databaseId} | 
[**GetDatabases**](SearchableDatabasesApi.md#GetDatabases) | **GET** /api/databases | 
[**GetIncludedDatabases**](SearchableDatabasesApi.md#GetIncludedDatabases) | **GET** /api/databases/included | 
[**RemoveDatabase**](SearchableDatabasesApi.md#RemoveDatabase) | **DELETE** /api/databases/{databaseId} | 
[**UpdateDatabase**](SearchableDatabasesApi.md#UpdateDatabase) | **PUT** /api/databases/{databaseId} | 


# **AddDatabases**
> array[SearchableDatabase] AddDatabases(request_body)

DEPRECATED: this endpoint is based on local file paths and will likely be replaced in future versions of this API.

### Example
```R
library(Rsirius)

# DEPRECATED: this endpoint is based on local file paths and will likely be replaced in future versions of this API.
#
# prepare function argument(s)
var_request_body <- c("property_example") # array[character] | 

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddDatabases(var_request_bodydata_file = "result.txt")
result <- api_instance$searchable_databases_api$AddDatabases(var_request_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | list( **character** )|  | 

### Return type

[**array[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **CreateDatabase**
> SearchableDatabase CreateDatabase(database_id, searchable_database_parameters = var.searchable_database_parameters)



### Example
```R
library(Rsirius)

# prepare function argument(s)
var_database_id <- "database_id_example" # character | 
var_searchable_database_parameters <- SearchableDatabaseParameters$new("displayName_example", "location_example", "matchRtOfReferenceSpectra_example") # SearchableDatabaseParameters |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateDatabase(var_database_id, searchable_database_parameters = var_searchable_database_parametersdata_file = "result.txt")
result <- api_instance$searchable_databases_api$CreateDatabase(var_database_id, searchable_database_parameters = var_searchable_database_parameters)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **character**|  | 
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
| **200** | OK |  -  |

# **GetCustomDatabases**
> array[SearchableDatabase] GetCustomDatabases(include_stats = FALSE, include_with_errors = FALSE)



### Example
```R
library(Rsirius)

# prepare function argument(s)
var_include_stats <- FALSE # character |  (Optional)
var_include_with_errors <- FALSE # character |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCustomDatabases(include_stats = var_include_stats, include_with_errors = var_include_with_errorsdata_file = "result.txt")
result <- api_instance$searchable_databases_api$GetCustomDatabases(include_stats = var_include_stats, include_with_errors = var_include_with_errors)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_stats** | **character**|  | [optional] [default to FALSE]
 **include_with_errors** | **character**|  | [optional] [default to FALSE]

### Return type

[**array[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetDatabase**
> SearchableDatabase GetDatabase(database_id, include_stats = TRUE)



### Example
```R
library(Rsirius)

# prepare function argument(s)
var_database_id <- "database_id_example" # character | 
var_include_stats <- TRUE # character |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDatabase(var_database_id, include_stats = var_include_statsdata_file = "result.txt")
result <- api_instance$searchable_databases_api$GetDatabase(var_database_id, include_stats = var_include_stats)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **character**|  | 
 **include_stats** | **character**|  | [optional] [default to TRUE]

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
| **200** | OK |  -  |

# **GetDatabases**
> array[SearchableDatabase] GetDatabases(include_stats = FALSE, include_with_errors = FALSE)



### Example
```R
library(Rsirius)

# prepare function argument(s)
var_include_stats <- FALSE # character |  (Optional)
var_include_with_errors <- FALSE # character |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDatabases(include_stats = var_include_stats, include_with_errors = var_include_with_errorsdata_file = "result.txt")
result <- api_instance$searchable_databases_api$GetDatabases(include_stats = var_include_stats, include_with_errors = var_include_with_errors)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_stats** | **character**|  | [optional] [default to FALSE]
 **include_with_errors** | **character**|  | [optional] [default to FALSE]

### Return type

[**array[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetIncludedDatabases**
> array[SearchableDatabase] GetIncludedDatabases(include_stats = FALSE)



### Example
```R
library(Rsirius)

# prepare function argument(s)
var_include_stats <- FALSE # character |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetIncludedDatabases(include_stats = var_include_statsdata_file = "result.txt")
result <- api_instance$searchable_databases_api$GetIncludedDatabases(include_stats = var_include_stats)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_stats** | **character**|  | [optional] [default to FALSE]

### Return type

[**array[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **RemoveDatabase**
> RemoveDatabase(database_id, delete = FALSE)



### Example
```R
library(Rsirius)

# prepare function argument(s)
var_database_id <- "database_id_example" # character | 
var_delete <- FALSE # character |  (Optional)

api_instance <- rsirius_api$new()
api_instance$searchable_databases_api$RemoveDatabase(var_database_id, delete = var_delete)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **character**|  | 
 **delete** | **character**|  | [optional] [default to FALSE]

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
| **200** | OK |  -  |

# **UpdateDatabase**
> SearchableDatabase UpdateDatabase(database_id, searchable_database_parameters = var.searchable_database_parameters)



### Example
```R
library(Rsirius)

# prepare function argument(s)
var_database_id <- "database_id_example" # character | 
var_searchable_database_parameters <- SearchableDatabaseParameters$new("displayName_example", "location_example", "matchRtOfReferenceSpectra_example") # SearchableDatabaseParameters |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateDatabase(var_database_id, searchable_database_parameters = var_searchable_database_parametersdata_file = "result.txt")
result <- api_instance$searchable_databases_api$UpdateDatabase(var_database_id, searchable_database_parameters = var_searchable_database_parameters)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **character**|  | 
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
| **200** | OK |  -  |

