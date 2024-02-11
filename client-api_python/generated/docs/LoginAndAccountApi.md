# PySirius.LoginAndAccountApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account_info**](LoginAndAccountApi.md#get_account_info) | **GET** /api/account/ | Get information about the account currently logged in.
[**get_sign_up_url**](LoginAndAccountApi.md#get_sign_up_url) | **GET** /api/account/signUpURL | Get SignUp URL (For signUp via web browser)
[**get_subscriptions**](LoginAndAccountApi.md#get_subscriptions) | **GET** /api/account/subscriptions | Get available subscriptions of the account currently logged in.
[**is_logged_in**](LoginAndAccountApi.md#is_logged_in) | **GET** /api/account/isLoggedIn | Check if a user is logged in.
[**login**](LoginAndAccountApi.md#login) | **POST** /api/account/login | Login into SIRIUS web services.
[**logout**](LoginAndAccountApi.md#logout) | **POST** /api/account/logout | Logout from SIRIUS web services.
[**sign_up**](LoginAndAccountApi.md#sign_up) | **GET** /api/account/signUp | Open SignUp window in system browser and return signUp link.

# **get_account_info**
> AccountInfo get_account_info(include_subs=include_subs)

Get information about the account currently logged in.

Get information about the account currently logged in. Fails if not logged in.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.LoginAndAccountApi()
include_subs = true # bool | include available and active subscriptions in {@link AccountInfo AccountInfo}. (optional)

try:
    # Get information about the account currently logged in.
    api_response = api_instance.get_account_info(include_subs=include_subs)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LoginAndAccountApi->get_account_info: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_subs** | **bool**| include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional] 

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_sign_up_url**
> str get_sign_up_url()

Get SignUp URL (For signUp via web browser)

Get SignUp URL (For signUp via web browser)

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.LoginAndAccountApi()

try:
    # Get SignUp URL (For signUp via web browser)
    api_response = api_instance.get_sign_up_url()
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_subscriptions**
> list[Subscription] get_subscriptions()

Get available subscriptions of the account currently logged in.

Get available subscriptions of the account currently logged in. Fails if not logged in.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.LoginAndAccountApi()

try:
    # Get available subscriptions of the account currently logged in.
    api_response = api_instance.get_subscriptions()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LoginAndAccountApi->get_subscriptions: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[Subscription]**](Subscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **is_logged_in**
> bool is_logged_in()

Check if a user is logged in.

Check if a user is logged in.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.LoginAndAccountApi()

try:
    # Check if a user is logged in.
    api_response = api_instance.is_logged_in()
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> AccountInfo login(body, accept_terms, fail_when_logged_in=fail_when_logged_in, include_subs=include_subs)

Login into SIRIUS web services.

Login into SIRIUS web services.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.LoginAndAccountApi()
body = PySirius.AccountCredentials() # AccountCredentials | used to log in.
accept_terms = true # bool | 
fail_when_logged_in = true # bool | if true request fails if an active login already exists. (optional)
include_subs = true # bool | include available and active subscriptions in {@link AccountInfo AccountInfo}. (optional)

try:
    # Login into SIRIUS web services.
    api_response = api_instance.login(body, accept_terms, fail_when_logged_in=fail_when_logged_in, include_subs=include_subs)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LoginAndAccountApi->login: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountCredentials**](AccountCredentials.md)| used to log in. | 
 **accept_terms** | **bool**|  | 
 **fail_when_logged_in** | **bool**| if true request fails if an active login already exists. | [optional] 
 **include_subs** | **bool**| include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional] 

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> logout()

Logout from SIRIUS web services.

Logout from SIRIUS web services.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.LoginAndAccountApi()

try:
    # Logout from SIRIUS web services.
    api_instance.logout()
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sign_up**
> str sign_up()

Open SignUp window in system browser and return signUp link.

Open SignUp window in system browser and return signUp link.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.LoginAndAccountApi()

try:
    # Open SignUp window in system browser and return signUp link.
    api_response = api_instance.sign_up()
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

