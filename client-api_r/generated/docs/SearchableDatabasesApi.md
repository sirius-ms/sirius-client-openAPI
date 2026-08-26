# SearchableDatabasesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddDatabases**](SearchableDatabasesApi.md#AddDatabases) | **POST** /api/databases | [DEPRECATED] This endpoint is based on local file paths and will likely be replaced in future versions of this API.
[**CreateDatabase**](SearchableDatabasesApi.md#CreateDatabase) | **POST** /api/databases/{databaseId} | Create a new, empty custom database
[**GetCustomDatabases**](SearchableDatabasesApi.md#GetCustomDatabases) | **GET** /api/databases/custom | List only the custom databases, that is the structure databases and spectral libraries the user has  created or added.
[**GetDatabase**](SearchableDatabasesApi.md#GetDatabase) | **GET** /api/databases/{databaseId} | Get a single searchable database by its id.
[**GetDatabases**](SearchableDatabasesApi.md#GetDatabases) | **GET** /api/databases | List all searchable databases, both the ones included in SIRIUS and the custom ones added by the user
[**GetIncludedDatabases**](SearchableDatabasesApi.md#GetIncludedDatabases) | **GET** /api/databases/included | List only the databases that ship with SIRIUS, such as PubChem and the bio databases.
[**ImportIntoDatabase**](SearchableDatabasesApi.md#ImportIntoDatabase) | **POST** /api/databases/{databaseId}/import/from-files | Start import of structure and spectra files into the specified database.
[**RemoveDatabase**](SearchableDatabasesApi.md#RemoveDatabase) | **DELETE** /api/databases/{databaseId} | Remove a custom database from this SIRIUS instance, and optionally delete it from disk
[**UpdateDatabase**](SearchableDatabasesApi.md#UpdateDatabase) | **PUT** /api/databases/{databaseId} | Change the settings of an existing custom database


# **AddDatabases**
> array[SearchableDatabase] AddDatabases(request_body)

[DEPRECATED] This endpoint is based on local file paths and will likely be replaced in future versions of this API.

Register existing custom database files with this SIRIUS instance, so that they become searchable.  <p>  Use this to make databases that already exist on disk available again, for example after reinstalling  SIRIUS or when sharing a database file with a colleague. The files are opened in place, not copied.

### Example
```R
library(RSirius)

# [DEPRECATED] This endpoint is based on local file paths and will likely be replaced in future versions of this API.
#
# prepare function argument(s)
var_request_body <- c("property_example") # array[character] | local file paths of the database files (.siriusdb) to register. Each must exist,                         must not already be registered, and its name must not collide with an existing                         database.

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddDatabases(var_request_bodydata_file = "result.txt")
result <- api_instance$searchable_databases_api$AddDatabases(var_request_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | list( **character** )| local file paths of the database files (.siriusdb) to register. Each must exist,                         must not already be registered, and its name must not collide with an existing                         database. | 

### Return type

[**array[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the databases that were successfully registered. Files that exist but could not be opened are          skipped and are absent from the result. |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **400** | A path does not exist or is not a file, is already registered, or its database name is already in use. No database is registered in that case. |  -  |

# **CreateDatabase**
> SearchableDatabase CreateDatabase(database_id, searchable_database_parameters = var.searchable_database_parameters)

Create a new, empty custom database

Create a new, empty custom database.  <p>  The new database is created on disk and registered with this SIRIUS instance, so it can immediately be  used as a search parameter and imported into via the import endpoint. It contains no structures and no  reference spectra until something is imported.

### Example
```R
library(RSirius)

# Create a new, empty custom database
#
# prepare function argument(s)
var_database_id <- "database_id_example" # character | id of the new database. Must be URL-safe, that is letters, digits, '-' and '_' only,                     and must not be in use by another database.
var_searchable_database_parameters <- SearchableDatabaseParameters$new("displayName_example", "location_example", "matchRtOfReferenceSpectra_example") # SearchableDatabaseParameters | optional settings for the new database. If omitted, the database is created in the                     default custom database directory with default settings. Supply a location to place                     the database file elsewhere, a displayName for the user interface, and                     matchRtOfReferenceSpectra for in-house libraries whose retention times are comparable                     to the measured samples. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateDatabase(var_database_id, searchable_database_parameters = var_searchable_database_parametersdata_file = "result.txt")
result <- api_instance$searchable_databases_api$CreateDatabase(var_database_id, searchable_database_parameters = var_searchable_database_parameters)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **character**| id of the new database. Must be URL-safe, that is letters, digits, &#39;-&#39; and &#39;_&#39; only,                     and must not be in use by another database. | 
 **searchable_database_parameters** | [**SearchableDatabaseParameters**](SearchableDatabaseParameters.md)| optional settings for the new database. If omitted, the database is created in the                     default custom database directory with default settings. Supply a location to place                     the database file elsewhere, a displayName for the user interface, and                     matchRtOfReferenceSpectra for in-house libraries whose retention times are comparable                     to the measured samples. | [optional] 

### Return type

[**SearchableDatabase**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the created database. |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **400** | The database id is not a valid database name. It must consist of letters, digits, &#39;-&#39; and &#39;_&#39; only. |  -  |
| **409** | A database with this id already exists, or a file already exists at the target location. |  -  |

# **GetCustomDatabases**
> array[SearchableDatabase] GetCustomDatabases(include_stats = FALSE, include_with_errors = FALSE)

List only the custom databases, that is the structure databases and spectral libraries the user has  created or added.

List only the custom databases, that is the structure databases and spectral libraries the user has  created or added. These are the databases that can be modified and imported into.

### Example
```R
library(RSirius)

# List only the custom databases, that is the structure databases and spectral libraries the user has  created or added.
#
# prepare function argument(s)
var_include_stats <- FALSE # character | if true, the number of structures, formulas and reference spectra is included                           per database. Slower, since the database files have to be read. (Optional)
var_include_with_errors <- FALSE # character | if true, databases that could not be loaded are listed as well, carrying the                           reason in their errorMessage field. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCustomDatabases(include_stats = var_include_stats, include_with_errors = var_include_with_errorsdata_file = "result.txt")
result <- api_instance$searchable_databases_api$GetCustomDatabases(include_stats = var_include_stats, include_with_errors = var_include_with_errors)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_stats** | **character**| if true, the number of structures, formulas and reference spectra is included                           per database. Slower, since the database files have to be read. | [optional] [default to FALSE]
 **include_with_errors** | **character**| if true, databases that could not be loaded are listed as well, carrying the                           reason in their errorMessage field. | [optional] [default to FALSE]

### Return type

[**array[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | all custom databases known to this SIRIUS instance. |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

# **GetDatabase**
> SearchableDatabase GetDatabase(database_id, include_stats = TRUE)

Get a single searchable database by its id.

Get a single searchable database by its id.

### Example
```R
library(RSirius)

# Get a single searchable database by its id.
#
# prepare function argument(s)
var_database_id <- "database_id_example" # character | id of the database to retrieve, as reported by the listing endpoints.
var_include_stats <- TRUE # character | if true (the default here), the number of structures, formulas and reference spectra                      is included. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDatabase(var_database_id, include_stats = var_include_statsdata_file = "result.txt")
result <- api_instance$searchable_databases_api$GetDatabase(var_database_id, include_stats = var_include_stats)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **character**| id of the database to retrieve, as reported by the listing endpoints. | 
 **include_stats** | **character**| if true (the default here), the number of structures, formulas and reference spectra                      is included. | [optional] [default to TRUE]

### Return type

[**SearchableDatabase**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the requested database. |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **404** | No database with the given id exists. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

# **GetDatabases**
> array[SearchableDatabase] GetDatabases(include_stats = FALSE, include_with_errors = FALSE)

List all searchable databases, both the ones included in SIRIUS and the custom ones added by the user

List all searchable databases, both the ones included in SIRIUS and the custom ones added by the user.  <p>  A searchable database provides structures and reference spectra (optional), and can be selected as a search  parameter for structure database search and spectral library search. Note that every imported spectral  library also acts as a structure database.

### Example
```R
library(RSirius)

# List all searchable databases, both the ones included in SIRIUS and the custom ones added by the user
#
# prepare function argument(s)
var_include_stats <- FALSE # character | if true, the number of structures, formulas and reference spectra is included                            per database. Computing these counts touches the database files, so requesting                            them is noticeably slower than a plain listing. (Optional)
var_include_with_errors <- FALSE # character | if true, databases that could not be loaded are listed as well, carrying the                            reason in their errorMessage field. Use this to show a broken database to the                            user instead of silently hiding it. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDatabases(include_stats = var_include_stats, include_with_errors = var_include_with_errorsdata_file = "result.txt")
result <- api_instance$searchable_databases_api$GetDatabases(include_stats = var_include_stats, include_with_errors = var_include_with_errors)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_stats** | **character**| if true, the number of structures, formulas and reference spectra is included                            per database. Computing these counts touches the database files, so requesting                            them is noticeably slower than a plain listing. | [optional] [default to FALSE]
 **include_with_errors** | **character**| if true, databases that could not be loaded are listed as well, carrying the                            reason in their errorMessage field. Use this to show a broken database to the                            user instead of silently hiding it. | [optional] [default to FALSE]

### Return type

[**array[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | all databases known to this SIRIUS instance. |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

# **GetIncludedDatabases**
> array[SearchableDatabase] GetIncludedDatabases(include_stats = FALSE)

List only the databases that ship with SIRIUS, such as PubChem and the bio databases.

List only the databases that ship with SIRIUS, such as PubChem and the bio databases. These are  read-only: they cannot be imported into, modified or removed.

### Example
```R
library(RSirius)

# List only the databases that ship with SIRIUS, such as PubChem and the bio databases.
#
# prepare function argument(s)
var_include_stats <- FALSE # character | if true, the number of structures, formulas and reference spectra is included per                      database. Slower, since the database files have to be read. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetIncludedDatabases(include_stats = var_include_statsdata_file = "result.txt")
result <- api_instance$searchable_databases_api$GetIncludedDatabases(include_stats = var_include_stats)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_stats** | **character**| if true, the number of structures, formulas and reference spectra is included per                      database. Slower, since the database files have to be read. | [optional] [default to FALSE]

### Return type

[**array[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | all databases included in SIRIUS. |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

# **ImportIntoDatabase**
> SearchableDatabase ImportIntoDatabase(database_id, input_files, buffer_size = 1000, bio_transformer_parameters = var.bio_transformer_parameters)

Start import of structure and spectra files into the specified database.

Start import of structure and spectra files into the specified database.

### Example
```R
library(RSirius)

# Start import of structure and spectra files into the specified database.
#
# prepare function argument(s)
var_database_id <- "database_id_example" # character | id of the custom database to import into. Must exist.
var_input_files <- c(123) # array[data.frame] | files to import into project
var_buffer_size <- 1000 # integer | number of compounds to keep in memory before writing them to the                                  database. Raise it to speed up large imports on machines with enough RAM. (Optional)
var_bio_transformer_parameters <- BioTransformerParameters$new("RULE_BASED", "BT_RULE_BASED", c(BioTransformerSequenceStep$new("PHASE_1_CYP450", 123)), "useDB_example") # BioTransformerParameters |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ImportIntoDatabase(var_database_id, var_input_files, buffer_size = var_buffer_size, bio_transformer_parameters = var_bio_transformer_parametersdata_file = "result.txt")
result <- api_instance$searchable_databases_api$ImportIntoDatabase(var_database_id, var_input_files, buffer_size = var_buffer_size, bio_transformer_parameters = var_bio_transformer_parameters)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **character**| id of the custom database to import into. Must exist. | 
 **input_files** | list( **data.frame** )| files to import into project | 
 **buffer_size** | **integer**| number of compounds to keep in memory before writing them to the                                  database. Raise it to speed up large imports on machines with enough RAM. | [optional] [default to 1000]
 **bio_transformer_parameters** | [**BioTransformerParameters**](BioTransformerParameters.md)|  | [optional] 

### Return type

[**SearchableDatabase**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the affected database, including its updated statistics. |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **404** | No database with the given id exists. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

# **RemoveDatabase**
> RemoveDatabase(database_id, delete = FALSE)

Remove a custom database from this SIRIUS instance, and optionally delete it from disk

Remove a custom database from this SIRIUS instance, and optionally delete it from disk.  <p>  This is idempotent: removing a database that is not registered succeeds and does nothing, so a client  does not have to check first.

### Example
```R
library(RSirius)

# Remove a custom database from this SIRIUS instance, and optionally delete it from disk
#
# prepare function argument(s)
var_database_id <- "database_id_example" # character | id of the database to remove.
var_delete <- FALSE # character | if true, the database file is deleted from disk and the data is lost. If false (the                    default), only the registration is removed and the file is kept, so the database can                    be registered again later. (Optional)

api_instance <- rsirius_api$new()
api_instance$searchable_databases_api$RemoveDatabase(var_database_id, delete = var_delete)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **character**| id of the database to remove. | 
 **delete** | **character**| if true, the database file is deleted from disk and the data is lost. If false (the                    default), only the registration is removed and the file is kept, so the database can                    be registered again later. | [optional] [default to FALSE]

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
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

# **UpdateDatabase**
> SearchableDatabase UpdateDatabase(database_id, searchable_database_parameters = var.searchable_database_parameters)

Change the settings of an existing custom database

Change the settings of an existing custom database.  <p>  NOT IMPLEMENTED YET: changing the display name and the retention time matching flag of an existing database  is not supported so far, and every request currently fails. The request and response shape is settled  though, so a client can be written against this endpoint today: it will start succeeding in a future  version without any change on the client side.  <p>  Until then, create a new database with the desired settings and import into it.

### Example
```R
library(RSirius)

# Change the settings of an existing custom database
#
# prepare function argument(s)
var_database_id <- "database_id_example" # character | id of the database to update.
var_searchable_database_parameters <- SearchableDatabaseParameters$new("displayName_example", "location_example", "matchRtOfReferenceSpectra_example") # SearchableDatabaseParameters | the settings to apply. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateDatabase(var_database_id, searchable_database_parameters = var_searchable_database_parametersdata_file = "result.txt")
result <- api_instance$searchable_databases_api$UpdateDatabase(var_database_id, searchable_database_parameters = var_searchable_database_parameters)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **character**| id of the database to update. | 
 **searchable_database_parameters** | [**SearchableDatabaseParameters**](SearchableDatabaseParameters.md)| the settings to apply. | [optional] 

### Return type

[**SearchableDatabase**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the updated database. |  -  |
| **500** | Currently always, since updating custom databases is not implemented yet. This will become a normal server-side error once the endpoint is implemented. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

