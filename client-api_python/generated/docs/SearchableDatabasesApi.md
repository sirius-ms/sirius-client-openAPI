# PySirius.SearchableDatabasesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_databases**](SearchableDatabasesApi.md#add_databases) | **POST** /api/databases | [DEPRECATED] This endpoint is based on local file paths and will likely be replaced in future versions of this API.
[**create_database**](SearchableDatabasesApi.md#create_database) | **POST** /api/databases/{databaseId} | Create a new, empty custom database
[**get_custom_databases**](SearchableDatabasesApi.md#get_custom_databases) | **GET** /api/databases/custom | List only the custom databases, that is the structure databases and spectral libraries the user has  created or added.
[**get_database**](SearchableDatabasesApi.md#get_database) | **GET** /api/databases/{databaseId} | Get a single searchable database by its id.
[**get_databases**](SearchableDatabasesApi.md#get_databases) | **GET** /api/databases | List all searchable databases, both the ones included in SIRIUS and the custom ones added by the user
[**get_included_databases**](SearchableDatabasesApi.md#get_included_databases) | **GET** /api/databases/included | List only the databases that ship with SIRIUS, such as PubChem and the bio databases.
[**import_into_database**](SearchableDatabasesApi.md#import_into_database) | **POST** /api/databases/{databaseId}/import/from-files | Start import of structure and spectra files into the specified database.
[**remove_database**](SearchableDatabasesApi.md#remove_database) | **DELETE** /api/databases/{databaseId} | Remove a custom database from this SIRIUS instance, and optionally delete it from disk
[**update_database**](SearchableDatabasesApi.md#update_database) | **PUT** /api/databases/{databaseId} | Change the settings of an existing custom database


# **add_databases**
> List[SearchableDatabase] add_databases(request_body)

[DEPRECATED] This endpoint is based on local file paths and will likely be replaced in future versions of this API.

Register existing custom database files with this SIRIUS instance, so that they become searchable.
 <p>
 Use this to make databases that already exist on disk available again, for example after reinstalling
 SIRIUS or when sharing a database file with a colleague. The files are opened in place, not copied.

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
    request_body = ['request_body_example'] # List[str] | local file paths of the database files (.siriusdb) to register. Each must exist,                         must not already be registered, and its name must not collide with an existing                         database.

    try:
        # [DEPRECATED] This endpoint is based on local file paths and will likely be replaced in future versions of this API.
        api_response = api_instance.add_databases(request_body)
        print("The response of SearchableDatabasesApi->add_databases:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->add_databases: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**List[str]**](str.md)| local file paths of the database files (.siriusdb) to register. Each must exist,                         must not already be registered, and its name must not collide with an existing                         database. | 

### Return type

[**List[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | the databases that were successfully registered. Files that exist but could not be opened are          skipped and are absent from the result. |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**400** | A path does not exist or is not a file, is already registered, or its database name is already in use. No database is registered in that case. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_database**
> SearchableDatabase create_database(database_id, searchable_database_parameters=searchable_database_parameters)

Create a new, empty custom database

Create a new, empty custom database.
 <p>
 The new database is created on disk and registered with this SIRIUS instance, so it can immediately be
 used as a search parameter and imported into via the import endpoint. It contains no structures and no
 reference spectra until something is imported.

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
    database_id = 'database_id_example' # str | id of the new database. Must be URL-safe, that is letters, digits, '-' and '_' only,                     and must not be in use by another database.
    searchable_database_parameters = PySirius.SearchableDatabaseParameters() # SearchableDatabaseParameters | optional settings for the new database. If omitted, the database is created in the                     default custom database directory with default settings. Supply a location to place                     the database file elsewhere, a displayName for the user interface, and                     matchRtOfReferenceSpectra for in-house libraries whose retention times are comparable                     to the measured samples. (optional)

    try:
        # Create a new, empty custom database
        api_response = api_instance.create_database(database_id, searchable_database_parameters=searchable_database_parameters)
        print("The response of SearchableDatabasesApi->create_database:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->create_database: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **str**| id of the new database. Must be URL-safe, that is letters, digits, &#39;-&#39; and &#39;_&#39; only,                     and must not be in use by another database. | 
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
**200** | the created database. |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**400** | The database id is not a valid database name. It must consist of letters, digits, &#39;-&#39; and &#39;_&#39; only. |  -  |
**409** | A database with this id already exists, or a file already exists at the target location. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_custom_databases**
> List[SearchableDatabase] get_custom_databases(include_stats=include_stats, include_with_errors=include_with_errors)

List only the custom databases, that is the structure databases and spectral libraries the user has  created or added.

List only the custom databases, that is the structure databases and spectral libraries the user has
 created or added. These are the databases that can be modified and imported into.

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
    include_stats = False # bool | if true, the number of structures, formulas and reference spectra is included                           per database. Slower, since the database files have to be read. (optional) (default to False)
    include_with_errors = False # bool | if true, databases that could not be loaded are listed as well, carrying the                           reason in their errorMessage field. (optional) (default to False)

    try:
        # List only the custom databases, that is the structure databases and spectral libraries the user has  created or added.
        api_response = api_instance.get_custom_databases(include_stats=include_stats, include_with_errors=include_with_errors)
        print("The response of SearchableDatabasesApi->get_custom_databases:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->get_custom_databases: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_stats** | **bool**| if true, the number of structures, formulas and reference spectra is included                           per database. Slower, since the database files have to be read. | [optional] [default to False]
 **include_with_errors** | **bool**| if true, databases that could not be loaded are listed as well, carrying the                           reason in their errorMessage field. | [optional] [default to False]

### Return type

[**List[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | all custom databases known to this SIRIUS instance. |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_database**
> SearchableDatabase get_database(database_id, include_stats=include_stats)

Get a single searchable database by its id.

Get a single searchable database by its id.

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
    database_id = 'database_id_example' # str | id of the database to retrieve, as reported by the listing endpoints.
    include_stats = True # bool | if true (the default here), the number of structures, formulas and reference spectra                      is included. (optional) (default to True)

    try:
        # Get a single searchable database by its id.
        api_response = api_instance.get_database(database_id, include_stats=include_stats)
        print("The response of SearchableDatabasesApi->get_database:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->get_database: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **str**| id of the database to retrieve, as reported by the listing endpoints. | 
 **include_stats** | **bool**| if true (the default here), the number of structures, formulas and reference spectra                      is included. | [optional] [default to True]

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
**200** | the requested database. |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**404** | No database with the given id exists. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_databases**
> List[SearchableDatabase] get_databases(include_stats=include_stats, include_with_errors=include_with_errors)

List all searchable databases, both the ones included in SIRIUS and the custom ones added by the user

List all searchable databases, both the ones included in SIRIUS and the custom ones added by the user.
 <p>
 A searchable database provides structures and reference spectra (optional), and can be selected as a search
 parameter for structure database search and spectral library search. Note that every imported spectral
 library also acts as a structure database.

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
    include_stats = False # bool | if true, the number of structures, formulas and reference spectra is included                            per database. Computing these counts touches the database files, so requesting                            them is noticeably slower than a plain listing. (optional) (default to False)
    include_with_errors = False # bool | if true, databases that could not be loaded are listed as well, carrying the                            reason in their errorMessage field. Use this to show a broken database to the                            user instead of silently hiding it. (optional) (default to False)

    try:
        # List all searchable databases, both the ones included in SIRIUS and the custom ones added by the user
        api_response = api_instance.get_databases(include_stats=include_stats, include_with_errors=include_with_errors)
        print("The response of SearchableDatabasesApi->get_databases:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->get_databases: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_stats** | **bool**| if true, the number of structures, formulas and reference spectra is included                            per database. Computing these counts touches the database files, so requesting                            them is noticeably slower than a plain listing. | [optional] [default to False]
 **include_with_errors** | **bool**| if true, databases that could not be loaded are listed as well, carrying the                            reason in their errorMessage field. Use this to show a broken database to the                            user instead of silently hiding it. | [optional] [default to False]

### Return type

[**List[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | all databases known to this SIRIUS instance. |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_included_databases**
> List[SearchableDatabase] get_included_databases(include_stats=include_stats)

List only the databases that ship with SIRIUS, such as PubChem and the bio databases.

List only the databases that ship with SIRIUS, such as PubChem and the bio databases. These are
 read-only: they cannot be imported into, modified or removed.

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
    include_stats = False # bool | if true, the number of structures, formulas and reference spectra is included per                      database. Slower, since the database files have to be read. (optional) (default to False)

    try:
        # List only the databases that ship with SIRIUS, such as PubChem and the bio databases.
        api_response = api_instance.get_included_databases(include_stats=include_stats)
        print("The response of SearchableDatabasesApi->get_included_databases:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->get_included_databases: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_stats** | **bool**| if true, the number of structures, formulas and reference spectra is included per                      database. Slower, since the database files have to be read. | [optional] [default to False]

### Return type

[**List[SearchableDatabase]**](SearchableDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | all databases included in SIRIUS. |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_into_database**
> SearchableDatabase import_into_database(database_id, input_files, buffer_size=buffer_size, bio_transformer_parameters=bio_transformer_parameters)

Start import of structure and spectra files into the specified database.

Start import of structure and spectra files into the specified database.

### Example


```python
import PySirius
from PySirius.models.bio_transformer_parameters import BioTransformerParameters
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
    database_id = 'database_id_example' # str | id of the custom database to import into. Must exist.
    input_files = None # List[bytearray] | files to import into project
    buffer_size = 1000 # int | number of compounds to keep in memory before writing them to the                                  database. Raise it to speed up large imports on machines with enough RAM. (optional) (default to 1000)
    bio_transformer_parameters = PySirius.BioTransformerParameters() # BioTransformerParameters |  (optional)

    try:
        # Start import of structure and spectra files into the specified database.
        api_response = api_instance.import_into_database(database_id, input_files, buffer_size=buffer_size, bio_transformer_parameters=bio_transformer_parameters)
        print("The response of SearchableDatabasesApi->import_into_database:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->import_into_database: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **str**| id of the custom database to import into. Must exist. | 
 **input_files** | **List[bytearray]**| files to import into project | 
 **buffer_size** | **int**| number of compounds to keep in memory before writing them to the                                  database. Raise it to speed up large imports on machines with enough RAM. | [optional] [default to 1000]
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
**200** | the affected database, including its updated statistics. |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**404** | No database with the given id exists. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_database**
> remove_database(database_id, delete=delete)

Remove a custom database from this SIRIUS instance, and optionally delete it from disk

Remove a custom database from this SIRIUS instance, and optionally delete it from disk.
 <p>
 This is idempotent: removing a database that is not registered succeeds and does nothing, so a client
 does not have to check first.

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
    database_id = 'database_id_example' # str | id of the database to remove.
    delete = False # bool | if true, the database file is deleted from disk and the data is lost. If false (the                    default), only the registration is removed and the file is kept, so the database can                    be registered again later. (optional) (default to False)

    try:
        # Remove a custom database from this SIRIUS instance, and optionally delete it from disk
        api_instance.remove_database(database_id, delete=delete)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->remove_database: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **str**| id of the database to remove. | 
 **delete** | **bool**| if true, the database file is deleted from disk and the data is lost. If false (the                    default), only the registration is removed and the file is kept, so the database can                    be registered again later. | [optional] [default to False]

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
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_database**
> SearchableDatabase update_database(database_id, searchable_database_parameters=searchable_database_parameters)

Change the settings of an existing custom database

Change the settings of an existing custom database.
 <p>
 NOT IMPLEMENTED YET: changing the display name and the retention time matching flag of an existing database
 is not supported so far, and every request currently fails. The request and response shape is settled
 though, so a client can be written against this endpoint today: it will start succeeding in a future
 version without any change on the client side.
 <p>
 Until then, create a new database with the desired settings and import into it.

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
    database_id = 'database_id_example' # str | id of the database to update.
    searchable_database_parameters = PySirius.SearchableDatabaseParameters() # SearchableDatabaseParameters | the settings to apply. (optional)

    try:
        # Change the settings of an existing custom database
        api_response = api_instance.update_database(database_id, searchable_database_parameters=searchable_database_parameters)
        print("The response of SearchableDatabasesApi->update_database:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchableDatabasesApi->update_database: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **database_id** | **str**| id of the database to update. | 
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
**200** | the updated database. |  -  |
**500** | Currently always, since updating custom databases is not implemented yet. This will become a normal server-side error once the endpoint is implemented. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

