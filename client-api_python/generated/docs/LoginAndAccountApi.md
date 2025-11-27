# PySirius.LoginAndAccountApi

All URIs are relative to *http://localhost:8888*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account_info**](LoginAndAccountApi.md#get_account_info) | **GET** /api/account/ | Get information about the account currently logged in.
[**get_sign_up_url**](LoginAndAccountApi.md#get_sign_up_url) | **GET** /api/account/signUpURL | Get SignUp URL (For signUp via web browser)
[**get_subscriptions**](LoginAndAccountApi.md#get_subscriptions) | **GET** /api/account/subscriptions | Get available subscriptions of the account currently logged in.
[**is_logged_in**](LoginAndAccountApi.md#is_logged_in) | **GET** /api/account/isLoggedIn | Check if a user is logged in.
[**login**](LoginAndAccountApi.md#login) | **POST** /api/account/login | Login into SIRIUS web services and activate default subscription if available.
[**logout**](LoginAndAccountApi.md#logout) | **POST** /api/account/logout | Logout from SIRIUS web services.
[**open_portal**](LoginAndAccountApi.md#open_portal) | **GET** /api/account/openPortal | Open User portal in browser.
[**select_subscription**](LoginAndAccountApi.md#select_subscription) | **PUT** /api/account/subscriptions/select-active | Select a subscription as active subscription to be used for computations.
[**sign_up**](LoginAndAccountApi.md#sign_up) | **GET** /api/account/signUp | Open SignUp window in system browser and return signUp link.


# **get_account_info**
> AccountInfo get_account_info(include_subs=include_subs)

Get information about the account currently logged in.

Get information about the account currently logged in. Fails if not logged in.

### Example


```python
import PySirius
from PySirius.models.account_info import AccountInfo
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.LoginAndAccountApi(api_client)
    include_subs = False # bool | include available and active subscriptions in {@link AccountInfo AccountInfo}. (optional) (default to False)

    try:
        # Get information about the account currently logged in.
        api_response = api_instance.get_account_info(include_subs=include_subs)
        print("The response of LoginAndAccountApi->get_account_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LoginAndAccountApi->get_account_info: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_subs** | **bool**| include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional] [default to False]

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Basic information about the account that has been logged in and its subscriptions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_sign_up_url**
> str get_sign_up_url()

Get SignUp URL (For signUp via web browser)

Get SignUp URL (For signUp via web browser)

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.LoginAndAccountApi(api_client)

    try:
        # Get SignUp URL (For signUp via web browser)
        api_response = api_instance.get_sign_up_url()
        print("The response of LoginAndAccountApi->get_sign_up_url:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LoginAndAccountApi->get_sign_up_url: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain;charset=UTF-8

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_subscriptions**
> List[Subscription] get_subscriptions()

Get available subscriptions of the account currently logged in.

Get available subscriptions of the account currently logged in. Fails if not logged in.

### Example


```python
import PySirius
from PySirius.models.subscription import Subscription
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.LoginAndAccountApi(api_client)

    try:
        # Get available subscriptions of the account currently logged in.
        api_response = api_instance.get_subscriptions()
        print("The response of LoginAndAccountApi->get_subscriptions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LoginAndAccountApi->get_subscriptions: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[Subscription]**](Subscription.md)

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

# **is_logged_in**
> bool is_logged_in()

Check if a user is logged in.

Check if a user is logged in.

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.LoginAndAccountApi(api_client)

    try:
        # Check if a user is logged in.
        api_response = api_instance.is_logged_in()
        print("The response of LoginAndAccountApi->is_logged_in:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LoginAndAccountApi->is_logged_in: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | true if the user is logged in |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> AccountInfo login(accept_terms, account_credentials, fail_when_logged_in=fail_when_logged_in, include_subs=include_subs)

Login into SIRIUS web services and activate default subscription if available.

Login into SIRIUS web services and activate default subscription if available.

### Example


```python
import PySirius
from PySirius.models.account_credentials import AccountCredentials
from PySirius.models.account_info import AccountInfo
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.LoginAndAccountApi(api_client)
    accept_terms = True # bool | 
    account_credentials = PySirius.AccountCredentials() # AccountCredentials | used to log in.
    fail_when_logged_in = False # bool | if true request fails if an active login already exists. (optional) (default to False)
    include_subs = False # bool | include available and active subscriptions in {@link AccountInfo AccountInfo}. (optional) (default to False)

    try:
        # Login into SIRIUS web services and activate default subscription if available.
        api_response = api_instance.login(accept_terms, account_credentials, fail_when_logged_in=fail_when_logged_in, include_subs=include_subs)
        print("The response of LoginAndAccountApi->login:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LoginAndAccountApi->login: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept_terms** | **bool**|  | 
 **account_credentials** | [**AccountCredentials**](AccountCredentials.md)| used to log in. | 
 **fail_when_logged_in** | **bool**| if true request fails if an active login already exists. | [optional] [default to False]
 **include_subs** | **bool**| include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional] [default to False]

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Basic information about the account that has been logged in and its subscriptions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> logout()

Logout from SIRIUS web services.

Logout from SIRIUS web services.

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.LoginAndAccountApi(api_client)

    try:
        # Logout from SIRIUS web services.
        api_instance.logout()
    except Exception as e:
        print("Exception when calling LoginAndAccountApi->logout: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

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

# **open_portal**
> open_portal()

Open User portal in browser.

Open User portal in browser. If user is logged in SIRIUS tries to transfer the login state to the browser.

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.LoginAndAccountApi(api_client)

    try:
        # Open User portal in browser.
        api_instance.open_portal()
    except Exception as e:
        print("Exception when calling LoginAndAccountApi->open_portal: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

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

# **select_subscription**
> AccountInfo select_subscription(sid)

Select a subscription as active subscription to be used for computations.

Select a subscription as active subscription to be used for computations.

### Example


```python
import PySirius
from PySirius.models.account_info import AccountInfo
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.LoginAndAccountApi(api_client)
    sid = 'sid_example' # str | 

    try:
        # Select a subscription as active subscription to be used for computations.
        api_response = api_instance.select_subscription(sid)
        print("The response of LoginAndAccountApi->select_subscription:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LoginAndAccountApi->select_subscription: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sid** | **str**|  | 

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Account information with updated active subscription |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sign_up**
> str sign_up()

Open SignUp window in system browser and return signUp link.

Open SignUp window in system browser and return signUp link.

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.LoginAndAccountApi(api_client)

    try:
        # Open SignUp window in system browser and return signUp link.
        api_response = api_instance.sign_up()
        print("The response of LoginAndAccountApi->sign_up:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LoginAndAccountApi->sign_up: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain;charset=UTF-8

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

