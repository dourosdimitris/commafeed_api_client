# OpenapiClient::AdminApi

All URIs are relative to *http://localhost:8082*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_delete_user**](AdminApi.md#admin_delete_user) | **POST** /rest/admin/user/delete | Delete a user |
| [**admin_get_user**](AdminApi.md#admin_get_user) | **GET** /rest/admin/user/get/{id} | Get user information |
| [**admin_get_users**](AdminApi.md#admin_get_users) | **GET** /rest/admin/user/getAll | Get all users |
| [**admin_save_user**](AdminApi.md#admin_save_user) | **POST** /rest/admin/user/save | Save or update a user |
| [**get_metrics**](AdminApi.md#get_metrics) | **GET** /rest/admin/metrics | Retrieve server metrics |


## admin_delete_user

> admin_delete_user(id_request)

Delete a user

Delete a user, and all his subscriptions

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::AdminApi.new
id_request = OpenapiClient::IDRequest.new({id: 3.56}) # IDRequest | 

begin
  # Delete a user
  api_instance.admin_delete_user(id_request)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdminApi->admin_delete_user: #{e}"
end
```

#### Using the admin_delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_delete_user_with_http_info(id_request)

```ruby
begin
  # Delete a user
  data, status_code, headers = api_instance.admin_delete_user_with_http_info(id_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdminApi->admin_delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id_request** | [**IDRequest**](IDRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## admin_get_user

> <UserModel> admin_get_user(id)

Get user information

Get user information

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::AdminApi.new
id = 789 # Integer | user id

begin
  # Get user information
  result = api_instance.admin_get_user(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdminApi->admin_get_user: #{e}"
end
```

#### Using the admin_get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserModel>, Integer, Hash)> admin_get_user_with_http_info(id)

```ruby
begin
  # Get user information
  data, status_code, headers = api_instance.admin_get_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserModel>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdminApi->admin_get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | user id |  |

### Return type

[**UserModel**](UserModel.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_get_users

> <Array<UserModel>> admin_get_users

Get all users

Get all users

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::AdminApi.new

begin
  # Get all users
  result = api_instance.admin_get_users
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdminApi->admin_get_users: #{e}"
end
```

#### Using the admin_get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserModel>>, Integer, Hash)> admin_get_users_with_http_info

```ruby
begin
  # Get all users
  data, status_code, headers = api_instance.admin_get_users_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserModel>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdminApi->admin_get_users_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UserModel&gt;**](UserModel.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_save_user

> admin_save_user(admin_save_user_request)

Save or update a user

Save or update a user. If the id is not specified, a new user will be created

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::AdminApi.new
admin_save_user_request = OpenapiClient::AdminSaveUserRequest.new({name: 'name_example', enabled: false, admin: false}) # AdminSaveUserRequest | 

begin
  # Save or update a user
  api_instance.admin_save_user(admin_save_user_request)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdminApi->admin_save_user: #{e}"
end
```

#### Using the admin_save_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_save_user_with_http_info(admin_save_user_request)

```ruby
begin
  # Save or update a user
  data, status_code, headers = api_instance.admin_save_user_with_http_info(admin_save_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdminApi->admin_save_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admin_save_user_request** | [**AdminSaveUserRequest**](AdminSaveUserRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_metrics

> get_metrics

Retrieve server metrics

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::AdminApi.new

begin
  # Retrieve server metrics
  api_instance.get_metrics
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdminApi->get_metrics: #{e}"
end
```

#### Using the get_metrics_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_metrics_with_http_info

```ruby
begin
  # Retrieve server metrics
  data, status_code, headers = api_instance.get_metrics_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdminApi->get_metrics_with_http_info: #{e}"
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

