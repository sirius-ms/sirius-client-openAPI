# LoginAndAccountApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAccountInfo**](LoginAndAccountApi.md#GetAccountInfo) | **GET** /api/account/ | Get information about the account currently logged in.
[**GetSignUpURL**](LoginAndAccountApi.md#GetSignUpURL) | **GET** /api/account/signUpURL | Get SignUp URL (For signUp via web browser)
[**GetSubscriptions**](LoginAndAccountApi.md#GetSubscriptions) | **GET** /api/account/subscriptions | Get available subscriptions of the account currently logged in.
[**IsLoggedIn**](LoginAndAccountApi.md#IsLoggedIn) | **GET** /api/account/isLoggedIn | Check if a user is logged in.
[**Login**](LoginAndAccountApi.md#Login) | **POST** /api/account/login | Login into SIRIUS web services.
[**Logout**](LoginAndAccountApi.md#Logout) | **POST** /api/account/logout | Logout from SIRIUS web services.
[**SignUp**](LoginAndAccountApi.md#SignUp) | **GET** /api/account/signUp | Open SignUp window in system browser and return signUp link.


# **GetAccountInfo**
> AccountInfo GetAccountInfo(include_subs = FALSE)

Get information about the account currently logged in.

Get information about the account currently logged in. Fails if not logged in.

### Example
```R
library(RSirius)

# Get information about the account currently logged in.
#
# prepare function argument(s)
var_include_subs <- FALSE # character | include available and active subscriptions in {@link AccountInfo AccountInfo}. (Optional)

api_instance <- LoginAndAccountApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAccountInfo(include_subs = var_include_subsdata_file = "result.txt")
result <- api_instance$GetAccountInfo(include_subs = var_include_subs)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_subs** | **character**| include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional] [default to FALSE]

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
| **200** | Basic information about the account that has been logged in and its subscriptions. |  -  |

# **GetSignUpURL**
> character GetSignUpURL()

Get SignUp URL (For signUp via web browser)

Get SignUp URL (For signUp via web browser)

### Example
```R
library(RSirius)

# Get SignUp URL (For signUp via web browser)
#

api_instance <- LoginAndAccountApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSignUpURL(data_file = "result.txt")
result <- api_instance$GetSignUpURL()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetSubscriptions**
> array[Subscription] GetSubscriptions()

Get available subscriptions of the account currently logged in.

Get available subscriptions of the account currently logged in. Fails if not logged in.

### Example
```R
library(RSirius)

# Get available subscriptions of the account currently logged in.
#

api_instance <- LoginAndAccountApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSubscriptions(data_file = "result.txt")
result <- api_instance$GetSubscriptions()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[Subscription]**](Subscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **IsLoggedIn**
> character IsLoggedIn()

Check if a user is logged in.

Check if a user is logged in.

### Example
```R
library(RSirius)

# Check if a user is logged in.
#

api_instance <- LoginAndAccountApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$IsLoggedIn(data_file = "result.txt")
result <- api_instance$IsLoggedIn()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | true if the user is logged in |  -  |

# **Login**
> AccountInfo Login(accept_terms, account_credentials, fail_when_logged_in = FALSE, include_subs = FALSE)

Login into SIRIUS web services.

Login into SIRIUS web services.

### Example
```R
library(RSirius)

# Login into SIRIUS web services.
#
# prepare function argument(s)
var_accept_terms <- "accept_terms_example" # character | 
var_account_credentials <- AccountCredentials$new("username_example", "password_example", "refreshToken_example") # AccountCredentials | used to log in.
var_fail_when_logged_in <- FALSE # character | if true request fails if an active login already exists. (Optional)
var_include_subs <- FALSE # character | include available and active subscriptions in {@link AccountInfo AccountInfo}. (Optional)

api_instance <- LoginAndAccountApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Login(var_accept_terms, var_account_credentials, fail_when_logged_in = var_fail_when_logged_in, include_subs = var_include_subsdata_file = "result.txt")
result <- api_instance$Login(var_accept_terms, var_account_credentials, fail_when_logged_in = var_fail_when_logged_in, include_subs = var_include_subs)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept_terms** | **character**|  | 
 **account_credentials** | [**AccountCredentials**](AccountCredentials.md)| used to log in. | 
 **fail_when_logged_in** | **character**| if true request fails if an active login already exists. | [optional] [default to FALSE]
 **include_subs** | **character**| include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional] [default to FALSE]

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
| **200** | Basic information about the account that has been logged in and its subscriptions. |  -  |

# **Logout**
> Logout()

Logout from SIRIUS web services.

Logout from SIRIUS web services.

### Example
```R
library(RSirius)

# Logout from SIRIUS web services.
#

api_instance <- LoginAndAccountApi$new()
api_instance$Logout()
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
| **200** | OK |  -  |

# **SignUp**
> character SignUp()

Open SignUp window in system browser and return signUp link.

Open SignUp window in system browser and return signUp link.

### Example
```R
library(RSirius)

# Open SignUp window in system browser and return signUp link.
#

api_instance <- LoginAndAccountApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SignUp(data_file = "result.txt")
result <- api_instance$SignUp()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

