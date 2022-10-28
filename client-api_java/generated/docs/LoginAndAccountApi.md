# LoginAndAccountApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountInfo**](LoginAndAccountApi.md#getAccountInfo) | **GET** /api/account/ | Get information about the account currently logged in.
[**getSignUpURL**](LoginAndAccountApi.md#getSignUpURL) | **GET** /api/account/signUpURL | Get SignUp URL (For signUp via web browser)
[**getSubscriptions**](LoginAndAccountApi.md#getSubscriptions) | **GET** /api/account/subscriptions | Get available subscriptions of the account currently logged in.
[**isLoggedIn**](LoginAndAccountApi.md#isLoggedIn) | **GET** /api/account/isLoggedIn | Check if a user is logged in.
[**login**](LoginAndAccountApi.md#login) | **POST** /api/account/login | Login into SIRIUS web services.
[**logout**](LoginAndAccountApi.md#logout) | **POST** /api/account/logout | Logout from SIRIUS web services.
[**signUp**](LoginAndAccountApi.md#signUp) | **GET** /api/account/signUp | Open SignUp window in system browser and return signUp link.

<a name="getAccountInfo"></a>
# **getAccountInfo**
> AccountInfo getAccountInfo(includeSubs)

Get information about the account currently logged in.

Get information about the account currently logged in. Fails if not logged in.

### Example
```java
// Import classes:
//import JSirius.ApiException;
//import JSirius.api.LoginAndAccountApi;


LoginAndAccountApi apiInstance = new LoginAndAccountApi();
Boolean includeSubs = false; // Boolean | include available and active subscriptions in {@link AccountInfo AccountInfo}.
try {
    AccountInfo result = apiInstance.getAccountInfo(includeSubs);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LoginAndAccountApi#getAccountInfo");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeSubs** | **Boolean**| include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional] [default to false]

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSignUpURL"></a>
# **getSignUpURL**
> String getSignUpURL()

Get SignUp URL (For signUp via web browser)

Get SignUp URL (For signUp via web browser)

### Example
```java
// Import classes:
//import JSirius.ApiException;
//import JSirius.api.LoginAndAccountApi;


LoginAndAccountApi apiInstance = new LoginAndAccountApi();
try {
    String result = apiInstance.getSignUpURL();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LoginAndAccountApi#getSignUpURL");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

<a name="getSubscriptions"></a>
# **getSubscriptions**
> List&lt;Subscription&gt; getSubscriptions()

Get available subscriptions of the account currently logged in.

Get available subscriptions of the account currently logged in. Fails if not logged in.

### Example
```java
// Import classes:
//import JSirius.ApiException;
//import JSirius.api.LoginAndAccountApi;


LoginAndAccountApi apiInstance = new LoginAndAccountApi();
try {
    List<Subscription> result = apiInstance.getSubscriptions();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LoginAndAccountApi#getSubscriptions");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Subscription&gt;**](Subscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="isLoggedIn"></a>
# **isLoggedIn**
> Boolean isLoggedIn()

Check if a user is logged in.

Check if a user is logged in.

### Example
```java
// Import classes:
//import JSirius.ApiException;
//import JSirius.api.LoginAndAccountApi;


LoginAndAccountApi apiInstance = new LoginAndAccountApi();
try {
    Boolean result = apiInstance.isLoggedIn();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LoginAndAccountApi#isLoggedIn");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Boolean**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="login"></a>
# **login**
> AccountInfo login(body, acceptTerms, failWhenLoggedIn, includeSubs)

Login into SIRIUS web services.

Login into SIRIUS web services.

### Example
```java
// Import classes:
//import JSirius.ApiException;
//import JSirius.api.LoginAndAccountApi;


LoginAndAccountApi apiInstance = new LoginAndAccountApi();
AccountCredentials body = new AccountCredentials(); // AccountCredentials | used to log in.
Boolean acceptTerms = true; // Boolean | 
Boolean failWhenLoggedIn = false; // Boolean | if true request fails if an active login already exists.
Boolean includeSubs = false; // Boolean | include available and active subscriptions in {@link AccountInfo AccountInfo}.
try {
    AccountInfo result = apiInstance.login(body, acceptTerms, failWhenLoggedIn, includeSubs);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LoginAndAccountApi#login");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountCredentials**](AccountCredentials.md)| used to log in. |
 **acceptTerms** | **Boolean**|  |
 **failWhenLoggedIn** | **Boolean**| if true request fails if an active login already exists. | [optional] [default to false]
 **includeSubs** | **Boolean**| include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional] [default to false]

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="logout"></a>
# **logout**
> logout()

Logout from SIRIUS web services.

Logout from SIRIUS web services.

### Example
```java
// Import classes:
//import JSirius.ApiException;
//import JSirius.api.LoginAndAccountApi;


LoginAndAccountApi apiInstance = new LoginAndAccountApi();
try {
    apiInstance.logout();
} catch (ApiException e) {
    System.err.println("Exception when calling LoginAndAccountApi#logout");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="signUp"></a>
# **signUp**
> String signUp()

Open SignUp window in system browser and return signUp link.

Open SignUp window in system browser and return signUp link.

### Example
```java
// Import classes:
//import JSirius.ApiException;
//import JSirius.api.LoginAndAccountApi;


LoginAndAccountApi apiInstance = new LoginAndAccountApi();
try {
    String result = apiInstance.signUp();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LoginAndAccountApi#signUp");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

