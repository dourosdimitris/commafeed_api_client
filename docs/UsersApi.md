# OpenapiClient::UsersApi

All URIs are relative to *http://localhost:8082*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_user**](UsersApi.md#delete_user) | **POST** /rest/user/profile/deleteAccount | Delete the user account |
| [**get_user_profile**](UsersApi.md#get_user_profile) | **GET** /rest/user/profile | Retrieve user&#39;s profile |
| [**get_user_settings**](UsersApi.md#get_user_settings) | **GET** /rest/user/settings | Retrieve user settings |
| [**password_recovery_callback**](UsersApi.md#password_recovery_callback) | **GET** /rest/user/passwordResetCallback |  |
| [**register_user**](UsersApi.md#register_user) | **POST** /rest/user/register | Register a new account |
| [**save_user_profile**](UsersApi.md#save_user_profile) | **POST** /rest/user/profile | Save user&#39;s profile |
| [**save_user_settings**](UsersApi.md#save_user_settings) | **POST** /rest/user/settings | Save user settings |
| [**send_password_reset**](UsersApi.md#send_password_reset) | **POST** /rest/user/passwordReset | send a password reset email |


## delete_user

> delete_user

Delete the user account

### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::UsersApi.new

begin
  # Delete the user account
  api_instance.delete_user
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info

```ruby
begin
  # Delete the user account
  data, status_code, headers = api_instance.delete_user_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_profile

> <UserModel> get_user_profile

Retrieve user's profile

### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::UsersApi.new

begin
  # Retrieve user's profile
  result = api_instance.get_user_profile
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_profile: #{e}"
end
```

#### Using the get_user_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserModel>, Integer, Hash)> get_user_profile_with_http_info

```ruby
begin
  # Retrieve user's profile
  data, status_code, headers = api_instance.get_user_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserModel>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserModel**](UserModel.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_settings

> <Settings> get_user_settings

Retrieve user settings

Retrieve user settings

### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::UsersApi.new

begin
  # Retrieve user settings
  result = api_instance.get_user_settings
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_settings: #{e}"
end
```

#### Using the get_user_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Settings>, Integer, Hash)> get_user_settings_with_http_info

```ruby
begin
  # Retrieve user settings
  data, status_code, headers = api_instance.get_user_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Settings>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Settings**](Settings.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## password_recovery_callback

> password_recovery_callback(email, token)



### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::UsersApi.new
email = 'email_example' # String | 
token = 'token_example' # String | 

begin
  
  api_instance.password_recovery_callback(email, token)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->password_recovery_callback: #{e}"
end
```

#### Using the password_recovery_callback_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> password_recovery_callback_with_http_info(email, token)

```ruby
begin
  
  data, status_code, headers = api_instance.password_recovery_callback_with_http_info(email, token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->password_recovery_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **token** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## register_user

> register_user(registration_request)

Register a new account

### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::UsersApi.new
registration_request = OpenapiClient::RegistrationRequest.new({name: 'name_example', password: 'password_example', email: 'email_example'}) # RegistrationRequest | 

begin
  # Register a new account
  api_instance.register_user(registration_request)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->register_user: #{e}"
end
```

#### Using the register_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> register_user_with_http_info(registration_request)

```ruby
begin
  # Register a new account
  data, status_code, headers = api_instance.register_user_with_http_info(registration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->register_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **registration_request** | [**RegistrationRequest**](RegistrationRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_user_profile

> save_user_profile(profile_modification_request)

Save user's profile

### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::UsersApi.new
profile_modification_request = OpenapiClient::ProfileModificationRequest.new({current_password: 'current_password_example'}) # ProfileModificationRequest | 

begin
  # Save user's profile
  api_instance.save_user_profile(profile_modification_request)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->save_user_profile: #{e}"
end
```

#### Using the save_user_profile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> save_user_profile_with_http_info(profile_modification_request)

```ruby
begin
  # Save user's profile
  data, status_code, headers = api_instance.save_user_profile_with_http_info(profile_modification_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->save_user_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_modification_request** | [**ProfileModificationRequest**](ProfileModificationRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_user_settings

> save_user_settings(settings)

Save user settings

Save user settings

### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::UsersApi.new
settings = OpenapiClient::Settings.new({language: 'language_example', reading_mode: 'all,unread', reading_order: 'asc,desc', show_read: false, scroll_marks: false, scroll_speed: 37, scroll_mode: 'always,never,if_needed', entries_to_keep_on_top_when_scrolling: 37, star_icon_display_mode: 'always,never,on_desktop,on_mobile', external_link_icon_display_mode: 'always,never,on_desktop,on_mobile', mark_all_as_read_confirmation: false, custom_context_menu: false, mobile_footer: false, unread_count_title: false, unread_count_favicon: false, sharing_settings: OpenapiClient::SharingSettings.new({email: false, gmail: false, facebook: false, twitter: false, tumblr: false, pocket: false, instapaper: false, buffer: false})}) # Settings | 

begin
  # Save user settings
  api_instance.save_user_settings(settings)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->save_user_settings: #{e}"
end
```

#### Using the save_user_settings_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> save_user_settings_with_http_info(settings)

```ruby
begin
  # Save user settings
  data, status_code, headers = api_instance.save_user_settings_with_http_info(settings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->save_user_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings** | [**Settings**](Settings.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_password_reset

> send_password_reset(password_reset_request)

send a password reset email

### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::UsersApi.new
password_reset_request = OpenapiClient::PasswordResetRequest.new({email: 'email_example'}) # PasswordResetRequest | 

begin
  # send a password reset email
  api_instance.send_password_reset(password_reset_request)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->send_password_reset: #{e}"
end
```

#### Using the send_password_reset_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_password_reset_with_http_info(password_reset_request)

```ruby
begin
  # send a password reset email
  data, status_code, headers = api_instance.send_password_reset_with_http_info(password_reset_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->send_password_reset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password_reset_request** | [**PasswordResetRequest**](PasswordResetRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

