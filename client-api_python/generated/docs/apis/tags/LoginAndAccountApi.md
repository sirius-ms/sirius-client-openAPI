<a name="__pageTop"></a>
# PySirius.apis.tags.login_and_account_api.LoginAndAccountApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account_info**](#get_account_info) | **get** /api/account/ | Get information about the account currently logged in.
[**get_sign_up_url**](#get_sign_up_url) | **get** /api/account/signUpURL | Get SignUp URL (For signUp via web browser)
[**get_subscriptions**](#get_subscriptions) | **get** /api/account/subscriptions | Get available subscriptions of the account currently logged in.
[**is_logged_in**](#is_logged_in) | **get** /api/account/isLoggedIn | Check if a user is logged in.
[**login**](#login) | **post** /api/account/login | Login into SIRIUS web services.
[**logout**](#logout) | **post** /api/account/logout | Logout from SIRIUS web services.
[**sign_up**](#sign_up) | **get** /api/account/signUp | Open SignUp window in system browser and return signUp link.

# **get_account_info**
<a name="get_account_info"></a>
> AccountInfo get_account_info()

Get information about the account currently logged in.

Get information about the account currently logged in. Fails if not logged in.

### Example

```python
import PySirius
from PySirius.apis.tags import login_and_account_api
from PySirius.model.account_info import AccountInfo
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = login_and_account_api.LoginAndAccountApi(api_client)

    # example passing only optional values
    query_params = {
        'includeSubs': False,
    }
    try:
        # Get information about the account currently logged in.
        api_response = api_instance.get_account_info(
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling LoginAndAccountApi->get_account_info: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
includeSubs | IncludeSubsSchema | | optional


# IncludeSubsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_account_info.ApiResponseFor200) | Basic information about the account that has been logged in and its subscriptions.

#### get_account_info.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**AccountInfo**](../../models/AccountInfo.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_sign_up_url**
<a name="get_sign_up_url"></a>
> str get_sign_up_url()

Get SignUp URL (For signUp via web browser)

Get SignUp URL (For signUp via web browser)

### Example

```python
import PySirius
from PySirius.apis.tags import login_and_account_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = login_and_account_api.LoginAndAccountApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Get SignUp URL (For signUp via web browser)
        api_response = api_instance.get_sign_up_url()
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling LoginAndAccountApi->get_sign_up_url: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_sign_up_url.ApiResponseFor200) | OK

#### get_sign_up_url.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_subscriptions**
<a name="get_subscriptions"></a>
> [Subscription] get_subscriptions()

Get available subscriptions of the account currently logged in.

Get available subscriptions of the account currently logged in. Fails if not logged in.

### Example

```python
import PySirius
from PySirius.apis.tags import login_and_account_api
from PySirius.model.subscription import Subscription
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = login_and_account_api.LoginAndAccountApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Get available subscriptions of the account currently logged in.
        api_response = api_instance.get_subscriptions()
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling LoginAndAccountApi->get_subscriptions: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_subscriptions.ApiResponseFor200) | OK

#### get_subscriptions.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Subscription**]({{complexTypePrefix}}Subscription.md) | [**Subscription**]({{complexTypePrefix}}Subscription.md) | [**Subscription**]({{complexTypePrefix}}Subscription.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **is_logged_in**
<a name="is_logged_in"></a>
> bool is_logged_in()

Check if a user is logged in.

Check if a user is logged in.

### Example

```python
import PySirius
from PySirius.apis.tags import login_and_account_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = login_and_account_api.LoginAndAccountApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Check if a user is logged in.
        api_response = api_instance.is_logged_in()
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling LoginAndAccountApi->is_logged_in: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#is_logged_in.ApiResponseFor200) | true if the user is logged in

#### is_logged_in.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **login**
<a name="login"></a>
> AccountInfo login(accept_termsaccount_credentials)

Login into SIRIUS web services.

Login into SIRIUS web services.

### Example

```python
import PySirius
from PySirius.apis.tags import login_and_account_api
from PySirius.model.account_info import AccountInfo
from PySirius.model.account_credentials import AccountCredentials
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = login_and_account_api.LoginAndAccountApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'acceptTerms': True,
    }
    body = AccountCredentials(
        username="username_example",
        password="password_example",
        refresh_token="refresh_token_example",
    )
    try:
        # Login into SIRIUS web services.
        api_response = api_instance.login(
            query_params=query_params,
            body=body,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling LoginAndAccountApi->login: %s\n" % e)

    # example passing only optional values
    query_params = {
        'acceptTerms': True,
        'failWhenLoggedIn': False,
        'includeSubs': False,
    }
    body = AccountCredentials(
        username="username_example",
        password="password_example",
        refresh_token="refresh_token_example",
    )
    try:
        # Login into SIRIUS web services.
        api_response = api_instance.login(
            query_params=query_params,
            body=body,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling LoginAndAccountApi->login: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
query_params | RequestQueryParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**AccountCredentials**](../../models/AccountCredentials.md) |  | 


### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
acceptTerms | AcceptTermsSchema | | 
failWhenLoggedIn | FailWhenLoggedInSchema | | optional
includeSubs | IncludeSubsSchema | | optional


# AcceptTermsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | 

# FailWhenLoggedInSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

# IncludeSubsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#login.ApiResponseFor200) | Basic information about the account that has been logged in and its subscriptions.

#### login.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**AccountInfo**](../../models/AccountInfo.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **logout**
<a name="logout"></a>
> logout()

Logout from SIRIUS web services.

Logout from SIRIUS web services.

### Example

```python
import PySirius
from PySirius.apis.tags import login_and_account_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = login_and_account_api.LoginAndAccountApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Logout from SIRIUS web services.
        api_response = api_instance.logout()
    except PySirius.ApiException as e:
        print("Exception when calling LoginAndAccountApi->logout: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#logout.ApiResponseFor200) | OK

#### logout.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sign_up**
<a name="sign_up"></a>
> str sign_up()

Open SignUp window in system browser and return signUp link.

Open SignUp window in system browser and return signUp link.

### Example

```python
import PySirius
from PySirius.apis.tags import login_and_account_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = login_and_account_api.LoginAndAccountApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Open SignUp window in system browser and return signUp link.
        api_response = api_instance.sign_up()
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling LoginAndAccountApi->sign_up: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sign_up.ApiResponseFor200) | OK

#### sign_up.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

