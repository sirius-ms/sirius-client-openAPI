# IO.Swagger.Api.LoginAndAccountApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAccountInfo**](LoginAndAccountApi.md#getaccountinfo) | **GET** /api/account/ | Get information about the account currently logged in.
[**GetSignUpURL**](LoginAndAccountApi.md#getsignupurl) | **GET** /api/account/signUpURL | Get SignUp URL (For signUp via web browser)
[**GetSubscriptions**](LoginAndAccountApi.md#getsubscriptions) | **GET** /api/account/subscriptions | Get available subscriptions of the account currently logged in.
[**IsLoggedIn**](LoginAndAccountApi.md#isloggedin) | **GET** /api/account/isLoggedIn | Check if a user is logged in.
[**Login**](LoginAndAccountApi.md#login) | **POST** /api/account/login | Login into SIRIUS web services.
[**Logout**](LoginAndAccountApi.md#logout) | **POST** /api/account/logout | Logout from SIRIUS web services.
[**SignUp**](LoginAndAccountApi.md#signup) | **GET** /api/account/signUp | Open SignUp window in system browser and return signUp link.

<a name="getaccountinfo"></a>
# **GetAccountInfo**
> AccountInfo GetAccountInfo (bool? includeSubs = null)

Get information about the account currently logged in.

Get information about the account currently logged in. Fails if not logged in.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetAccountInfoExample
    {
        public void main()
        {
            var apiInstance = new LoginAndAccountApi();
            var includeSubs = true;  // bool? | include available and active subscriptions in {@link AccountInfo AccountInfo}. (optional)  (default to false)

            try
            {
                // Get information about the account currently logged in.
                AccountInfo result = apiInstance.GetAccountInfo(includeSubs);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LoginAndAccountApi.GetAccountInfo: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeSubs** | **bool?**| include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional] [default to false]

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getsignupurl"></a>
# **GetSignUpURL**
> string GetSignUpURL ()

Get SignUp URL (For signUp via web browser)

Get SignUp URL (For signUp via web browser)

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetSignUpURLExample
    {
        public void main()
        {
            var apiInstance = new LoginAndAccountApi();

            try
            {
                // Get SignUp URL (For signUp via web browser)
                string result = apiInstance.GetSignUpURL();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LoginAndAccountApi.GetSignUpURL: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getsubscriptions"></a>
# **GetSubscriptions**
> List<Subscription> GetSubscriptions ()

Get available subscriptions of the account currently logged in.

Get available subscriptions of the account currently logged in. Fails if not logged in.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetSubscriptionsExample
    {
        public void main()
        {
            var apiInstance = new LoginAndAccountApi();

            try
            {
                // Get available subscriptions of the account currently logged in.
                List&lt;Subscription&gt; result = apiInstance.GetSubscriptions();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LoginAndAccountApi.GetSubscriptions: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Subscription>**](Subscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="isloggedin"></a>
# **IsLoggedIn**
> bool? IsLoggedIn ()

Check if a user is logged in.

Check if a user is logged in.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class IsLoggedInExample
    {
        public void main()
        {
            var apiInstance = new LoginAndAccountApi();

            try
            {
                // Check if a user is logged in.
                bool? result = apiInstance.IsLoggedIn();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LoginAndAccountApi.IsLoggedIn: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**bool?**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="login"></a>
# **Login**
> AccountInfo Login (AccountCredentials body, bool? acceptTerms, bool? failWhenLoggedIn = null, bool? includeSubs = null)

Login into SIRIUS web services.

Login into SIRIUS web services.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LoginExample
    {
        public void main()
        {
            var apiInstance = new LoginAndAccountApi();
            var body = new AccountCredentials(); // AccountCredentials | used to log in.
            var acceptTerms = true;  // bool? | 
            var failWhenLoggedIn = true;  // bool? | if true request fails if an active login already exists. (optional)  (default to false)
            var includeSubs = true;  // bool? | include available and active subscriptions in {@link AccountInfo AccountInfo}. (optional)  (default to false)

            try
            {
                // Login into SIRIUS web services.
                AccountInfo result = apiInstance.Login(body, acceptTerms, failWhenLoggedIn, includeSubs);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LoginAndAccountApi.Login: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountCredentials**](AccountCredentials.md)| used to log in. | 
 **acceptTerms** | **bool?**|  | 
 **failWhenLoggedIn** | **bool?**| if true request fails if an active login already exists. | [optional] [default to false]
 **includeSubs** | **bool?**| include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional] [default to false]

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="logout"></a>
# **Logout**
> void Logout ()

Logout from SIRIUS web services.

Logout from SIRIUS web services.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LogoutExample
    {
        public void main()
        {
            var apiInstance = new LoginAndAccountApi();

            try
            {
                // Logout from SIRIUS web services.
                apiInstance.Logout();
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LoginAndAccountApi.Logout: " + e.Message );
            }
        }
    }
}
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
<a name="signup"></a>
# **SignUp**
> string SignUp ()

Open SignUp window in system browser and return signUp link.

Open SignUp window in system browser and return signUp link.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class SignUpExample
    {
        public void main()
        {
            var apiInstance = new LoginAndAccountApi();

            try
            {
                // Open SignUp window in system browser and return signUp link.
                string result = apiInstance.SignUp();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LoginAndAccountApi.SignUp: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
