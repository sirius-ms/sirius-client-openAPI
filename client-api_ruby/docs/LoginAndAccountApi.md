# SwaggerClient::LoginAndAccountApi

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
> AccountInfo get_account_info(opts)

Get information about the account currently logged in.

Get information about the account currently logged in. Fails if not logged in.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LoginAndAccountApi.new
opts = { 
  include_subs: false # BOOLEAN | include available and active subscriptions in {@link AccountInfo AccountInfo}.
}

begin
  #Get information about the account currently logged in.
  result = api_instance.get_account_info(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LoginAndAccountApi->get_account_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_subs** | **BOOLEAN**| include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional] [default to false]

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_sign_up_url**
> String get_sign_up_url

Get SignUp URL (For signUp via web browser)

Get SignUp URL (For signUp via web browser)

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LoginAndAccountApi.new

begin
  #Get SignUp URL (For signUp via web browser)
  result = api_instance.get_sign_up_url
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LoginAndAccountApi->get_sign_up_url: #{e}"
end
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



# **get_subscriptions**
> Array&lt;Subscription&gt; get_subscriptions

Get available subscriptions of the account currently logged in.

Get available subscriptions of the account currently logged in. Fails if not logged in.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LoginAndAccountApi.new

begin
  #Get available subscriptions of the account currently logged in.
  result = api_instance.get_subscriptions
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LoginAndAccountApi->get_subscriptions: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Subscription&gt;**](Subscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **is_logged_in**
> BOOLEAN is_logged_in

Check if a user is logged in.

Check if a user is logged in.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LoginAndAccountApi.new

begin
  #Check if a user is logged in.
  result = api_instance.is_logged_in
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LoginAndAccountApi->is_logged_in: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**BOOLEAN**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **login**
> AccountInfo login(bodyaccept_terms, opts)

Login into SIRIUS web services.

Login into SIRIUS web services.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LoginAndAccountApi.new
body = SwaggerClient::AccountCredentials.new # AccountCredentials | used to log in.
accept_terms = true # BOOLEAN | 
opts = { 
  fail_when_logged_in: false # BOOLEAN | if true request fails if an active login already exists.
  include_subs: false # BOOLEAN | include available and active subscriptions in {@link AccountInfo AccountInfo}.
}

begin
  #Login into SIRIUS web services.
  result = api_instance.login(bodyaccept_terms, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LoginAndAccountApi->login: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountCredentials**](AccountCredentials.md)| used to log in. | 
 **accept_terms** | **BOOLEAN**|  | 
 **fail_when_logged_in** | **BOOLEAN**| if true request fails if an active login already exists. | [optional] [default to false]
 **include_subs** | **BOOLEAN**| include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional] [default to false]

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **logout**
> logout

Logout from SIRIUS web services.

Logout from SIRIUS web services.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LoginAndAccountApi.new

begin
  #Logout from SIRIUS web services.
  api_instance.logout
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LoginAndAccountApi->logout: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **sign_up**
> String sign_up

Open SignUp window in system browser and return signUp link.

Open SignUp window in system browser and return signUp link.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LoginAndAccountApi.new

begin
  #Open SignUp window in system browser and return signUp link.
  result = api_instance.sign_up
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LoginAndAccountApi->sign_up: #{e}"
end
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



