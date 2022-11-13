# RubySirius::LoginAndAccountApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account_info**](LoginAndAccountApi.md#get_account_info) | **GET** /api/account/ | Get information about the account currently logged in. |
| [**get_sign_up_url**](LoginAndAccountApi.md#get_sign_up_url) | **GET** /api/account/signUpURL | Get SignUp URL (For signUp via web browser) |
| [**get_subscriptions**](LoginAndAccountApi.md#get_subscriptions) | **GET** /api/account/subscriptions | Get available subscriptions of the account currently logged in. |
| [**is_logged_in**](LoginAndAccountApi.md#is_logged_in) | **GET** /api/account/isLoggedIn | Check if a user is logged in. |
| [**login**](LoginAndAccountApi.md#login) | **POST** /api/account/login | Login into SIRIUS web services. |
| [**logout**](LoginAndAccountApi.md#logout) | **POST** /api/account/logout | Logout from SIRIUS web services. |
| [**sign_up**](LoginAndAccountApi.md#sign_up) | **GET** /api/account/signUp | Open SignUp window in system browser and return signUp link. |


## get_account_info

> <AccountInfo> get_account_info(opts)

Get information about the account currently logged in.

Get information about the account currently logged in. Fails if not logged in.

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::LoginAndAccountApi.new
opts = {
  include_subs: true # Boolean | include available and active subscriptions in {@link AccountInfo AccountInfo}.
}

begin
  # Get information about the account currently logged in.
  result = api_instance.get_account_info(opts)
  p result
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->get_account_info: #{e}"
end
```

#### Using the get_account_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountInfo>, Integer, Hash)> get_account_info_with_http_info(opts)

```ruby
begin
  # Get information about the account currently logged in.
  data, status_code, headers = api_instance.get_account_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountInfo>
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->get_account_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_subs** | **Boolean** | include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional][default to false] |

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sign_up_url

> String get_sign_up_url

Get SignUp URL (For signUp via web browser)

Get SignUp URL (For signUp via web browser)

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::LoginAndAccountApi.new

begin
  # Get SignUp URL (For signUp via web browser)
  result = api_instance.get_sign_up_url
  p result
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->get_sign_up_url: #{e}"
end
```

#### Using the get_sign_up_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_sign_up_url_with_http_info

```ruby
begin
  # Get SignUp URL (For signUp via web browser)
  data, status_code, headers = api_instance.get_sign_up_url_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->get_sign_up_url_with_http_info: #{e}"
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


## get_subscriptions

> <Array<Subscription>> get_subscriptions

Get available subscriptions of the account currently logged in.

Get available subscriptions of the account currently logged in. Fails if not logged in.

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::LoginAndAccountApi.new

begin
  # Get available subscriptions of the account currently logged in.
  result = api_instance.get_subscriptions
  p result
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->get_subscriptions: #{e}"
end
```

#### Using the get_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Subscription>>, Integer, Hash)> get_subscriptions_with_http_info

```ruby
begin
  # Get available subscriptions of the account currently logged in.
  data, status_code, headers = api_instance.get_subscriptions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Subscription>>
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->get_subscriptions_with_http_info: #{e}"
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


## is_logged_in

> Boolean is_logged_in

Check if a user is logged in.

Check if a user is logged in.

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::LoginAndAccountApi.new

begin
  # Check if a user is logged in.
  result = api_instance.is_logged_in
  p result
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->is_logged_in: #{e}"
end
```

#### Using the is_logged_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> is_logged_in_with_http_info

```ruby
begin
  # Check if a user is logged in.
  data, status_code, headers = api_instance.is_logged_in_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->is_logged_in_with_http_info: #{e}"
end
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


## login

> <AccountInfo> login(accept_terms, account_credentials, opts)

Login into SIRIUS web services.

Login into SIRIUS web services.

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::LoginAndAccountApi.new
accept_terms = true # Boolean | 
account_credentials = RubySirius::AccountCredentials.new # AccountCredentials | used to log in.
opts = {
  fail_when_logged_in: true, # Boolean | if true request fails if an active login already exists.
  include_subs: true # Boolean | include available and active subscriptions in {@link AccountInfo AccountInfo}.
}

begin
  # Login into SIRIUS web services.
  result = api_instance.login(accept_terms, account_credentials, opts)
  p result
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->login: #{e}"
end
```

#### Using the login_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountInfo>, Integer, Hash)> login_with_http_info(accept_terms, account_credentials, opts)

```ruby
begin
  # Login into SIRIUS web services.
  data, status_code, headers = api_instance.login_with_http_info(accept_terms, account_credentials, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountInfo>
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_terms** | **Boolean** |  |  |
| **account_credentials** | [**AccountCredentials**](AccountCredentials.md) | used to log in. |  |
| **fail_when_logged_in** | **Boolean** | if true request fails if an active login already exists. | [optional][default to false] |
| **include_subs** | **Boolean** | include available and active subscriptions in {@link AccountInfo AccountInfo}. | [optional][default to false] |

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## logout

> logout

Logout from SIRIUS web services.

Logout from SIRIUS web services.

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::LoginAndAccountApi.new

begin
  # Logout from SIRIUS web services.
  api_instance.logout
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->logout: #{e}"
end
```

#### Using the logout_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> logout_with_http_info

```ruby
begin
  # Logout from SIRIUS web services.
  data, status_code, headers = api_instance.logout_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->logout_with_http_info: #{e}"
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


## sign_up

> String sign_up

Open SignUp window in system browser and return signUp link.

Open SignUp window in system browser and return signUp link.

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::LoginAndAccountApi.new

begin
  # Open SignUp window in system browser and return signUp link.
  result = api_instance.sign_up
  p result
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->sign_up: #{e}"
end
```

#### Using the sign_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> sign_up_with_http_info

```ruby
begin
  # Open SignUp window in system browser and return signUp link.
  data, status_code, headers = api_instance.sign_up_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue RubySirius::ApiError => e
  puts "Error when calling LoginAndAccountApi->sign_up_with_http_info: #{e}"
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

