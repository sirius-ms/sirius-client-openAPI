# PySirius.CompoundsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_compounds**](CompoundsApi.md#add_compounds) | **POST** /api/projects/{projectId}/compounds | Import compounds and their contained features.
[**delete_compound**](CompoundsApi.md#delete_compound) | **DELETE** /api/projects/{projectId}/compounds/{compoundId} | Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.
[**get_compound**](CompoundsApi.md#get_compound) | **GET** /api/projects/{projectId}/compounds/{compoundId} | Get compound (group of ion identities) with the given identifier from the specified project-space.
[**get_compound_quant_table**](CompoundsApi.md#get_compound_quant_table) | **GET** /api/projects/{projectId}/compounds/quant-table | Returns the full quantification table of compounds
[**get_compounds**](CompoundsApi.md#get_compounds) | **GET** /api/projects/{projectId}/compounds | [DEPRECATED] List of all available compounds (group of ion identities) in the given project-space
[**get_compounds_page**](CompoundsApi.md#get_compounds_page) | **GET** /api/projects/{projectId}/compounds/page | Page of available compounds (group of ion identities) in the given project-space
[**get_compounds_searchable_fields**](CompoundsApi.md#get_compounds_searchable_fields) | **GET** /api/projects/{projectId}/compounds/searchable-fields | Get all fields that can be used in the searchQuery parameter of compound endpoints


# **add_compounds**
> List[Compound] add_compounds(project_id, compound_import, profile=profile, opt_fields=opt_fields, opt_fields_features=opt_fields_features)

Import compounds and their contained features.

Import compounds and their contained features. Compounds and features must not exist in the project.
 Otherwise, they will exist twice.

### Example


```python
import PySirius
from PySirius.models.aligned_feature_opt_field import AlignedFeatureOptField
from PySirius.models.compound import Compound
from PySirius.models.compound_import import CompoundImport
from PySirius.models.compound_opt_field import CompoundOptField
from PySirius.models.instrument_profile import InstrumentProfile
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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project-space to import into.
    compound_import = [PySirius.CompoundImport()] # List[CompoundImport] | the compound data to be imported
    profile = PySirius.InstrumentProfile() # InstrumentProfile | profile describing the instrument used to measure the data. Used to merge spectra. (optional)
    opt_fields = ["none"] # List[CompoundOptField] | set of optional fields to be included. Use 'none' to override defaults. (optional) (default to ["none"])
    opt_fields_features = ["none"] # List[AlignedFeatureOptField] | set of optional fields of the nested features to be included. Use 'none' to override defaults. (optional) (default to ["none"])

    try:
        # Import compounds and their contained features.
        api_response = api_instance.add_compounds(project_id, compound_import, profile=profile, opt_fields=opt_fields, opt_fields_features=opt_fields_features)
        print("The response of CompoundsApi->add_compounds:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->add_compounds: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to import into. | 
 **compound_import** | [**List[CompoundImport]**](CompoundImport.md)| the compound data to be imported | 
 **profile** | [**InstrumentProfile**](.md)| profile describing the instrument used to measure the data. Used to merge spectra. | [optional] 
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)| set of optional fields of the nested features to be included. Use &#39;none&#39; to override defaults. | [optional] [default to [&quot;none&quot;]]

### Return type

[**List[Compound]**](Compound.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | the Compounds that have been imported with specified optional fields |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_compound**
> delete_compound(project_id, compound_id)

Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.

Delete compound (group of ion identities) with the given identifier (and the included features) from the
 specified project-space.

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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project-space to delete from.
    compound_id = 'compound_id_example' # str | identifier of the compound to delete.

    try:
        # Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.
        api_instance.delete_compound(project_id, compound_id)
    except Exception as e:
        print("Exception when calling CompoundsApi->delete_compound: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete from. | 
 **compound_id** | **str**| identifier of the compound to delete. | 

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
**404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compound**
> Compound get_compound(project_id, compound_id, ms_data_search_prepared=ms_data_search_prepared, opt_fields=opt_fields, opt_fields_features=opt_fields_features)

Get compound (group of ion identities) with the given identifier from the specified project-space.

Get compound (group of ion identities) with the given identifier from the specified project-space.

### Example


```python
import PySirius
from PySirius.models.aligned_feature_opt_field import AlignedFeatureOptField
from PySirius.models.compound import Compound
from PySirius.models.compound_opt_field import CompoundOptField
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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    compound_id = 'compound_id_example' # str | identifier of the compound (group of ion identities) to access.
    ms_data_search_prepared = False # bool | Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. (optional) (default to False)
    opt_fields = ["none"] # List[CompoundOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["none"])
    opt_fields_features = ["none"] # List[AlignedFeatureOptField] |  (optional) (default to ["none"])

    try:
        # Get compound (group of ion identities) with the given identifier from the specified project-space.
        api_response = api_instance.get_compound(project_id, compound_id, ms_data_search_prepared=ms_data_search_prepared, opt_fields=opt_fields, opt_fields_features=opt_fields_features)
        print("The response of CompoundsApi->get_compound:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compound: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| identifier of the compound (group of ion identities) to access. | 
 **ms_data_search_prepared** | **bool**| Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. | [optional] [default to False]
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)|  | [optional] [default to [&quot;none&quot;]]

### Return type

[**Compound**](Compound.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Compounds with additional optional fields (if specified). |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compound_quant_table**
> QuantTable get_compound_quant_table(project_id, search_query=search_query, type=type, opt_fields=opt_fields)

Returns the full quantification table of compounds

Returns the full quantification table of compounds.
 <p>
 The quantification table contains the quantities of the compounds within all runs they are contained in.
 Rows refer to compounds, columns to runs, both given as ids and names.
 <p>
 Compounds are not indexed yet, so the optional search query may only refer to the compound id, e.g.
 <code>compoundId:1 OR compoundId:2</code> or <code>NOT compoundId:3</code>. Such a query is answered with the same
 semantics the search index would apply. Any query referring to other fields is rejected. Omit the query to
 quantify all compounds.

### Example


```python
import PySirius
from PySirius.models.quant_measure import QuantMeasure
from PySirius.models.quant_table import QuantTable
from PySirius.models.quant_table_opt_field import QuantTableOptField
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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    search_query = 'search_query_example' # str | Optional query in lucene syntax selecting compounds by id. Omit this parameter to quantify all compounds. (optional)
    type = PySirius.QuantMeasure() # QuantMeasure | quantification type. (optional)
    opt_fields = ["none"] # List[QuantTableOptField] |  (optional) (default to ["none"])

    try:
        # Returns the full quantification table of compounds
        api_response = api_instance.get_compound_quant_table(project_id, search_query=search_query, type=type, opt_fields=opt_fields)
        print("The response of CompoundsApi->get_compound_quant_table:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compound_quant_table: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **search_query** | **str**| Optional query in lucene syntax selecting compounds by id. Omit this parameter to quantify all compounds. | [optional] 
 **type** | [**QuantMeasure**](.md)| quantification type. | [optional] 
 **opt_fields** | [**List[QuantTableOptField]**](QuantTableOptField.md)|  | [optional] [default to [&quot;none&quot;]]

### Return type

[**QuantTable**](QuantTable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Quant table of the compounds of this project |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compounds**
> List[Compound] get_compounds(project_id, ms_data_search_prepared=ms_data_search_prepared, opt_fields=opt_fields, opt_fields_features=opt_fields_features)

[DEPRECATED] List of all available compounds (group of ion identities) in the given project-space

[DEPRECATED] List of all available compounds (group of ion identities) in the given project-space.
 <p>
 [DEPRECATED] Use /compounds/page instead. Loading all compounds at once does not scale for large projects.
 This endpoint will be removed in the next major version of this API.

### Example


```python
import PySirius
from PySirius.models.aligned_feature_opt_field import AlignedFeatureOptField
from PySirius.models.compound import Compound
from PySirius.models.compound_opt_field import CompoundOptField
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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    ms_data_search_prepared = False # bool | Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. (optional) (default to False)
    opt_fields = ["none"] # List[CompoundOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["none"])
    opt_fields_features = ["none"] # List[AlignedFeatureOptField] |  (optional) (default to ["none"])

    try:
        # [DEPRECATED] List of all available compounds (group of ion identities) in the given project-space
        api_response = api_instance.get_compounds(project_id, ms_data_search_prepared=ms_data_search_prepared, opt_fields=opt_fields, opt_fields_features=opt_fields_features)
        print("The response of CompoundsApi->get_compounds:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compounds: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **ms_data_search_prepared** | **bool**| Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. | [optional] [default to False]
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)|  | [optional] [default to [&quot;none&quot;]]

### Return type

[**List[Compound]**](Compound.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Compounds with additional optional fields (if specified). |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compounds_page**
> PagedModelCompound get_compounds_page(project_id, search_query=search_query, page=page, size=size, sort=sort, ms_data_search_prepared=ms_data_search_prepared, opt_fields=opt_fields, opt_fields_features=opt_fields_features)

Page of available compounds (group of ion identities) in the given project-space

Page of available compounds (group of ion identities) in the given project-space.

 <h2>Supported filter syntax</h2>

 <p>The filter string must contain one or more clauses. A clause is prefixed
 by a field name.
 </p>
 <p>
 Use the <code>searchable-fields</code> endpoint (getCompoundsSearchableFields) to list the fields that can be
 searched - since compound-level indexing is not implemented yet, it currently returns an empty list
 (nothing searchable). The syntax below describes how queries will work once compound search is supported;
 tag based fields are prefixed with the namespace <code>tags.</code>.
 Possible value types are <strong>text</strong>, <strong>integer</strong>, <strong>double</strong>,
 <strong>boolean</strong>, <strong>date</strong>, or <strong>time</strong>.

 <p>The format of the <strong>date</strong> type is <code>yyyy-MM-dd</code> and of the <strong>time</strong> type is <code>HH\:mm\:ss</code>.</p>

 <p>A clause may be:</p>
 <ul>
     <li>a <strong>term</strong>: field name followed by a colon and the search term, e.g. <code>tags.MyTagA:sample</code></li>
     <li>a <strong>phrase</strong>: field name followed by a colon and the search phrase in doublequotes, e.g. <code>tags.MyTagA:&quot;Some Text&quot;</code></li>
     <li>a <strong>regular expression</strong>: field name followed by a colon and the regex in slashes, e.g. <code>tags.MyTagA:/[mb]oat/</code></li>
     <li>a <strong>comparison</strong>: field name followed by a comparison operator and a value, e.g. <code>tags.MyTagB&lt;3</code></li>
     <li>a <strong>range</strong>: field name followed by a colon and an open (indiced by <code>[ </code> and <code>] </code>) or (semi-)closed range (indiced by <code>{</code> and <code>}</code>), e.g. <code>tags.MyTagB:[* TO 3] </code></li>
 </ul>

 <p>Clauses may be <strong>grouped</strong> with brackets <code>( </code> and <code>) </code> and / or <strong>joined</strong> with <code>AND</code> or <code>OR </code> (or <code>&amp;&amp; </code> and <code>|| </code>)</p>

 <h3>Example</h3>

 <p>The syntax allows to build complex filter queries such as:</p>

 <p><code>tags.city:&quot;new york&quot; AND tags.ATextTag:/[mb]oat/ AND tags.count:[1 TO *] OR tags.realNumberTag&lt;=3.2 OR tags.MyDateTag:2024-01-01 OR tags.MyDateTag:[2023-10-01 TO 2023-12-24] OR tags.MyDateTag&lt;2022-01-01 OR tags.time:12\:00\:00 OR tags.time:[12\:00\:00 TO 14\:00\:00] OR tags.time&lt;10\:00\:00 </code></p>
 <p>
 <strong>Note:</strong> compound-level indexing is not implemented yet, so this endpoint always reads from the
 project database. Passing a non-empty <code>searchQuery</code> is therefore not supported and responds with
 405 METHOD_NOT_ALLOWED. Omit the parameter to page over all compounds.

### Example


```python
import PySirius
from PySirius.models.aligned_feature_opt_field import AlignedFeatureOptField
from PySirius.models.compound_opt_field import CompoundOptField
from PySirius.models.paged_model_compound import PagedModelCompound
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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    search_query = 'search_query_example' # str | Optional search query in lucene syntax. Not yet supported for compounds; a non-empty                      query responds with 405 METHOD_NOT_ALLOWED. Omit this parameter to page over all compounds. (optional)
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    ms_data_search_prepared = False # bool | Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. (optional) (default to False)
    opt_fields = ["none"] # List[CompoundOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["none"])
    opt_fields_features = ["none"] # List[AlignedFeatureOptField] |  (optional) (default to ["none"])

    try:
        # Page of available compounds (group of ion identities) in the given project-space
        api_response = api_instance.get_compounds_page(project_id, search_query=search_query, page=page, size=size, sort=sort, ms_data_search_prepared=ms_data_search_prepared, opt_fields=opt_fields, opt_fields_features=opt_fields_features)
        print("The response of CompoundsApi->get_compounds_page:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compounds_page: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **search_query** | **str**| Optional search query in lucene syntax. Not yet supported for compounds; a non-empty                      query responds with 405 METHOD_NOT_ALLOWED. Omit this parameter to page over all compounds. | [optional] 
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**List[str]**](str.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **ms_data_search_prepared** | **bool**| Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. | [optional] [default to False]
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)|  | [optional] [default to [&quot;none&quot;]]

### Return type

[**PagedModelCompound**](PagedModelCompound.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | tagged compounds (group of ion identities) |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compounds_searchable_fields**
> List[SearchableField] get_compounds_searchable_fields(project_id)

Get all fields that can be used in the searchQuery parameter of compound endpoints

Get all fields that can be used in the searchQuery parameter of compound endpoints.
 <p>
 An empty list means there are no searchable fields. Since compound-level indexing is not implemented yet,
 this currently always returns an empty list; it will list the searchable compound fields once compound
 search is supported.

### Example


```python
import PySirius
from PySirius.models.searchable_field import SearchableField
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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project space to read the searchable compound fields from.

    try:
        # Get all fields that can be used in the searchQuery parameter of compound endpoints
        api_response = api_instance.get_compounds_searchable_fields(project_id)
        print("The response of CompoundsApi->get_compounds_searchable_fields:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compounds_searchable_fields: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project space to read the searchable compound fields from. | 

### Return type

[**List[SearchableField]**](SearchableField.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | fields usable in searchQuery parameters of compound endpoints. |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

