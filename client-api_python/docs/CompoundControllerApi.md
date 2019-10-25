# swagger_client.CompoundControllerApi

All URIs are relative to *https://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_compound_ids_using_get**](CompoundControllerApi.md#get_compound_ids_using_get) | **GET** /api/projects/{pid}/compounds | getCompoundIds
[**get_compound_using_get**](CompoundControllerApi.md#get_compound_using_get) | **GET** /api/projects/{pid}/compounds/{cid} | getCompound


# **get_compound_ids_using_get**
> list[CompoundId] get_compound_ids_using_get(pid)

getCompoundIds

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.CompoundControllerApi()
pid = 'pid_example' # str | pid

try:
    # getCompoundIds
    api_response = api_instance.get_compound_ids_using_get(pid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CompoundControllerApi->get_compound_ids_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | **str**| pid | 

### Return type

[**list[CompoundId]**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compound_using_get**
> CompoundMsData get_compound_using_get(cid, pid)

getCompound

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.CompoundControllerApi()
cid = 'cid_example' # str | cid
pid = 'pid_example' # str | pid

try:
    # getCompound
    api_response = api_instance.get_compound_using_get(cid, pid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CompoundControllerApi->get_compound_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cid** | **str**| cid | 
 **pid** | **str**| pid | 

### Return type

[**CompoundMsData**](CompoundMsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

