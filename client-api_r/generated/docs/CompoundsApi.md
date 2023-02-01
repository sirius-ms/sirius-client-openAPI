# CompoundsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteCompound**](CompoundsApi.md#DeleteCompound) | **DELETE** /api/projects/{projectId}/compounds/{cid} | Delete compound/feature with the given identifier from the specified project-space.
[**GetCompound**](CompoundsApi.md#GetCompound) | **GET** /api/projects/{projectId}/compounds/{cid} | Get compound/feature with the given identifier from the specified project-space.
[**GetCompounds**](CompoundsApi.md#GetCompounds) | **GET** /api/projects/{projectId}/compounds | Get all available compounds/features in the given project-space.
[**ImportCompounds**](CompoundsApi.md#ImportCompounds) | **POST** /api/projects/{projectId}/compounds | Import ms/ms data in given format from local filesystem into the specified project-space
[**ImportCompoundsFromString**](CompoundsApi.md#ImportCompoundsFromString) | **POST** /api/projects/{projectId}/compounds/import-from-string | Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)


# **DeleteCompound**
> DeleteCompound(project_id, cid)

Delete compound/feature with the given identifier from the specified project-space.

Delete compound/feature with the given identifier from the specified project-space.

### Example
```R
library(Rsirius)

# Delete compound/feature with the given identifier from the specified project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to delete from.
var_cid <- "cid_example" # character | identifier of compound to delete.

api_instance <- rsirius_api$new()
api_instance$compounds_api$DeleteCompound(var_project_id, var_cid)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to delete from. | 
 **cid** | **character**| identifier of compound to delete. | 

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

# **GetCompound**
> CompoundId GetCompound(project_id, cid, top_annotation = FALSE, ms_data = FALSE)

Get compound/feature with the given identifier from the specified project-space.

Get compound/feature with the given identifier from the specified project-space.

### Example
```R
library(Rsirius)

# Get compound/feature with the given identifier from the specified project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_cid <- "cid_example" # character | identifier of compound to access.
var_top_annotation <- FALSE # character | include the top annotation of this feature into the output (if available). (Optional)
var_ms_data <- FALSE # character | include corresponding source data (MS and MS/MS) into the output. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompound(var_project_id, var_cid, top_annotation = var_top_annotation, ms_data = var_ms_datadata_file = "result.txt")
result <- api_instance$compounds_api$GetCompound(var_project_id, var_cid, top_annotation = var_top_annotation, ms_data = var_ms_data)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **cid** | **character**| identifier of compound to access. | 
 **top_annotation** | **character**| include the top annotation of this feature into the output (if available). | [optional] [default to FALSE]
 **ms_data** | **character**| include corresponding source data (MS and MS/MS) into the output. | [optional] [default to FALSE]

### Return type

[**CompoundId**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | CompoundId with additional annotations and MS/MS data (if specified). |  -  |

# **GetCompounds**
> array[CompoundId] GetCompounds(project_id, top_annotation = FALSE, ms_data = FALSE)

Get all available compounds/features in the given project-space.

Get all available compounds/features in the given project-space.

### Example
```R
library(Rsirius)

# Get all available compounds/features in the given project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_top_annotation <- FALSE # character | include the top annotation of this feature into the output (if available). (Optional)
var_ms_data <- FALSE # character | include corresponding source data (MS and MS/MS) into the output. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompounds(var_project_id, top_annotation = var_top_annotation, ms_data = var_ms_datadata_file = "result.txt")
result <- api_instance$compounds_api$GetCompounds(var_project_id, top_annotation = var_top_annotation, ms_data = var_ms_data)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **top_annotation** | **character**| include the top annotation of this feature into the output (if available). | [optional] [default to FALSE]
 **ms_data** | **character**| include corresponding source data (MS and MS/MS) into the output. | [optional] [default to FALSE]

### Return type

[**array[CompoundId]**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | CompoundIds with additional annotations and MS/MS data (if specified). |  -  |

# **ImportCompounds**
> JobId ImportCompounds(project_id, request_body, align_lcms_runs = FALSE, allow_ms1_only_data = TRUE, ignore_formulas = FALSE)

Import ms/ms data in given format from local filesystem into the specified project-space

Import ms/ms data in given format from local filesystem into the specified project-space.  The import will run in a background job  Possible formats (ms, mgf, cef, msp, mzML, mzXML, project-space)  <p>

### Example
```R
library(Rsirius)

# Import ms/ms data in given format from local filesystem into the specified project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to import into.
var_request_body <- c("property_example") # array[character] | List of file and directory paths to import
var_align_lcms_runs <- FALSE # character | If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding (Optional)
var_allow_ms1_only_data <- TRUE # character |  (Optional)
var_ignore_formulas <- FALSE # character |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ImportCompounds(var_project_id, var_request_body, align_lcms_runs = var_align_lcms_runs, allow_ms1_only_data = var_allow_ms1_only_data, ignore_formulas = var_ignore_formulasdata_file = "result.txt")
result <- api_instance$compounds_api$ImportCompounds(var_project_id, var_request_body, align_lcms_runs = var_align_lcms_runs, allow_ms1_only_data = var_allow_ms1_only_data, ignore_formulas = var_ignore_formulas)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to import into. | 
 **request_body** | list( **character** )| List of file and directory paths to import | 
 **align_lcms_runs** | **character**| If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding | [optional] [default to FALSE]
 **allow_ms1_only_data** | **character**|  | [optional] [default to TRUE]
 **ignore_formulas** | **character**|  | [optional] [default to FALSE]

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
| **200** | JobId background job that imports given compounds/features. |  -  |

# **ImportCompoundsFromString**
> array[CompoundId] ImportCompoundsFromString(project_id, format, body, source_name = var.source_name)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

### Example
```R
library(Rsirius)

# Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to import into.
var_format <- "format_example" # character | data format specified by the usual file extension of the format (without [.])
var_body <- "body_example" # character | data content in specified format
# tip: use the following line to generate the var_body string from a file "MyFile.ms"
# var_body <- paste(readLines("MyFile.ms", warn=FALSE), collapse="
")
var_source_name <- "source_name_example" # character | name that specifies the data source. Can e.g. be a file path or just a name. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ImportCompoundsFromString(var_project_id, var_format, var_body, source_name = var_source_namedata_file = "result.txt")
result <- api_instance$compounds_api$ImportCompoundsFromString(var_project_id, var_format, var_body, source_name = var_source_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to import into. | 
 **format** | **character**| data format specified by the usual file extension of the format (without [.]) | 
 **body** | **character**| data content in specified format | 
 **source_name** | **character**| name that specifies the data source. Can e.g. be a file path or just a name. | [optional] 

### Return type

[**array[CompoundId]**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | CompoundIds of the imported compounds/features. |  -  |

