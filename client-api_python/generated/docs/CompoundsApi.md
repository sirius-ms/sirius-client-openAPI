# PySirius.CompoundsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_compound**](CompoundsApi.md#delete_compound) | **DELETE** /api/projects/{projectId}/compounds/{cid} | Delete compound/feature with the given identifier from the specified project-space.
[**get_compound**](CompoundsApi.md#get_compound) | **GET** /api/projects/{projectId}/compounds/{cid} | Get compound/feature with the given identifier from the specified project-space.
[**get_compounds**](CompoundsApi.md#get_compounds) | **GET** /api/projects/{projectId}/compounds | Get all available compounds/features in the given project-space.
[**import_compounds**](CompoundsApi.md#import_compounds) | **POST** /api/projects/{projectId}/compounds | Import ms/ms data in given format from local filesystem into the specified project-space
[**import_compounds_from_string**](CompoundsApi.md#import_compounds_from_string) | **POST** /api/projects/{projectId}/compounds/import-from-string | Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

# **delete_compound**
> delete_compound(project_id, cid)

Delete compound/feature with the given identifier from the specified project-space.

Delete compound/feature with the given identifier from the specified project-space.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.CompoundsApi()
project_id = 'project_id_example' # str | project-space to delete from.
cid = 'cid_example' # str | identifier of compound to delete.

try:
    # Delete compound/feature with the given identifier from the specified project-space.
    api_instance.delete_compound(project_id, cid)
except ApiException as e:
    print("Exception when calling CompoundsApi->delete_compound: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete from. | 
 **cid** | **str**| identifier of compound to delete. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compound**
> CompoundId get_compound(project_id, cid, top_annotation=top_annotation, ms_data=ms_data, ms_quality=ms_quality)

Get compound/feature with the given identifier from the specified project-space.

Get compound/feature with the given identifier from the specified project-space.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.CompoundsApi()
project_id = 'project_id_example' # str | project-space to read from.
cid = 'cid_example' # str | identifier of compound to access.
top_annotation = false # bool | include the top annotation of this feature into the output (if available). (optional) (default to false)
ms_data = false # bool | include corresponding source data (MS and MS/MS) into the output. (optional) (default to false)
ms_quality = false # bool |  (optional) (default to false)

try:
    # Get compound/feature with the given identifier from the specified project-space.
    api_response = api_instance.get_compound(project_id, cid, top_annotation=top_annotation, ms_data=ms_data, ms_quality=ms_quality)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CompoundsApi->get_compound: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **cid** | **str**| identifier of compound to access. | 
 **top_annotation** | **bool**| include the top annotation of this feature into the output (if available). | [optional] [default to false]
 **ms_data** | **bool**| include corresponding source data (MS and MS/MS) into the output. | [optional] [default to false]
 **ms_quality** | **bool**|  | [optional] [default to false]

### Return type

[**CompoundId**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compounds**
> list[CompoundId] get_compounds(project_id, top_annotation=top_annotation, ms_data=ms_data, ms_quality=ms_quality)

Get all available compounds/features in the given project-space.

Get all available compounds/features in the given project-space.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.CompoundsApi()
project_id = 'project_id_example' # str | project-space to read from.
top_annotation = false # bool | include the top annotation of this feature into the output (if available). (optional) (default to false)
ms_data = false # bool | include corresponding source data (MS and MS/MS) into the output. (optional) (default to false)
ms_quality = false # bool |  (optional) (default to false)

try:
    # Get all available compounds/features in the given project-space.
    api_response = api_instance.get_compounds(project_id, top_annotation=top_annotation, ms_data=ms_data, ms_quality=ms_quality)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CompoundsApi->get_compounds: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **top_annotation** | **bool**| include the top annotation of this feature into the output (if available). | [optional] [default to false]
 **ms_data** | **bool**| include corresponding source data (MS and MS/MS) into the output. | [optional] [default to false]
 **ms_quality** | **bool**|  | [optional] [default to false]

### Return type

[**list[CompoundId]**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_compounds**
> JobId import_compounds(body, project_id, align_lcms_runs=align_lcms_runs, allow_ms1_only_data=allow_ms1_only_data, ignore_formulas=ignore_formulas)

Import ms/ms data in given format from local filesystem into the specified project-space

Import ms/ms data in given format from local filesystem into the specified project-space.  The import will run in a background job  Possible formats (ms, mgf, cef, msp, mzML, mzXML, project-space)  <p>

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.CompoundsApi()
body = ['body_example'] # list[str] | List of file and directory paths to import
project_id = 'project_id_example' # str | project-space to import into.
align_lcms_runs = false # bool | If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding (optional) (default to false)
allow_ms1_only_data = true # bool |  (optional) (default to true)
ignore_formulas = false # bool |  (optional) (default to false)

try:
    # Import ms/ms data in given format from local filesystem into the specified project-space
    api_response = api_instance.import_compounds(body, project_id, align_lcms_runs=align_lcms_runs, allow_ms1_only_data=allow_ms1_only_data, ignore_formulas=ignore_formulas)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CompoundsApi->import_compounds: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**list[str]**](str.md)| List of file and directory paths to import | 
 **project_id** | **str**| project-space to import into. | 
 **align_lcms_runs** | **bool**| If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding | [optional] [default to false]
 **allow_ms1_only_data** | **bool**|  | [optional] [default to true]
 **ignore_formulas** | **bool**|  | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_compounds_from_string**
> list[CompoundId] import_compounds_from_string(body, format, project_id, source_name=source_name)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.CompoundsApi()
body = 'body_example' # str | data content in specified format
format = 'format_example' # str | data format specified by the usual file extension of the format (without [.])
project_id = 'project_id_example' # str | project-space to import into.
source_name = 'source_name_example' # str | name that specifies the data source. Can e.g. be a file path or just a name. (optional)

try:
    # Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
    api_response = api_instance.import_compounds_from_string(body, format, project_id, source_name=source_name)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CompoundsApi->import_compounds_from_string: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**str**](str.md)| data content in specified format | 
 **format** | **str**| data format specified by the usual file extension of the format (without [.]) | 
 **project_id** | **str**| project-space to import into. | 
 **source_name** | **str**| name that specifies the data source. Can e.g. be a file path or just a name. | [optional] 

### Return type

[**list[CompoundId]**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

