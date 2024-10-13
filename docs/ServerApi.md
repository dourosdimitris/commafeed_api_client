# OpenapiClient::ServerApi

All URIs are relative to *http://localhost:8082*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_proxied_image**](ServerApi.md#get_proxied_image) | **GET** /rest/server/proxy | proxy image |
| [**get_server_infos**](ServerApi.md#get_server_infos) | **GET** /rest/server/get | Get server infos |


## get_proxied_image

> get_proxied_image(u)

proxy image

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

api_instance = OpenapiClient::ServerApi.new
u = 'u_example' # String | image url

begin
  # proxy image
  api_instance.get_proxied_image(u)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServerApi->get_proxied_image: #{e}"
end
```

#### Using the get_proxied_image_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_proxied_image_with_http_info(u)

```ruby
begin
  # proxy image
  data, status_code, headers = api_instance.get_proxied_image_with_http_info(u)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServerApi->get_proxied_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **u** | **String** | image url |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## get_server_infos

> <ServerInfo> get_server_infos

Get server infos

Get server infos

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

api_instance = OpenapiClient::ServerApi.new

begin
  # Get server infos
  result = api_instance.get_server_infos
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServerApi->get_server_infos: #{e}"
end
```

#### Using the get_server_infos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerInfo>, Integer, Hash)> get_server_infos_with_http_info

```ruby
begin
  # Get server infos
  data, status_code, headers = api_instance.get_server_infos_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerInfo>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServerApi->get_server_infos_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServerInfo**](ServerInfo.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

