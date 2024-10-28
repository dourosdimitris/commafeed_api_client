# CommafeedClient::FeedEntriesApi

All URIs are relative to *http://localhost:8082*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_tags**](FeedEntriesApi.md#get_tags) | **GET** /rest/entry/tags | Get list of tags for the user |
| [**mark_entries**](FeedEntriesApi.md#mark_entries) | **POST** /rest/entry/markMultiple | Mark multiple feed entries |
| [**mark_entry**](FeedEntriesApi.md#mark_entry) | **POST** /rest/entry/mark | Mark a feed entry |
| [**star_entry**](FeedEntriesApi.md#star_entry) | **POST** /rest/entry/star | Star a feed entry |
| [**tag_entry**](FeedEntriesApi.md#tag_entry) | **POST** /rest/entry/tag | Set feed entry tags |


## get_tags

> get_tags

Get list of tags for the user

Get list of tags for the user

### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
CommafeedClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CommafeedClient::FeedEntriesApi.new

begin
  # Get list of tags for the user
  api_instance.get_tags
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedEntriesApi->get_tags: #{e}"
end
```

#### Using the get_tags_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_tags_with_http_info

```ruby
begin
  # Get list of tags for the user
  data, status_code, headers = api_instance.get_tags_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedEntriesApi->get_tags_with_http_info: #{e}"
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


## mark_entries

> mark_entries(multiple_mark_request)

Mark multiple feed entries

Mark feed entries as read/unread

### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
CommafeedClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CommafeedClient::FeedEntriesApi.new
multiple_mark_request = CommafeedClient::MultipleMarkRequest.new({requests: [CommafeedClient::MarkRequest.new({id: 'id_example', read: false})]}) # MultipleMarkRequest | Multiple Mark Request

begin
  # Mark multiple feed entries
  api_instance.mark_entries(multiple_mark_request)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedEntriesApi->mark_entries: #{e}"
end
```

#### Using the mark_entries_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> mark_entries_with_http_info(multiple_mark_request)

```ruby
begin
  # Mark multiple feed entries
  data, status_code, headers = api_instance.mark_entries_with_http_info(multiple_mark_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedEntriesApi->mark_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **multiple_mark_request** | [**MultipleMarkRequest**](MultipleMarkRequest.md) | Multiple Mark Request |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## mark_entry

> mark_entry(mark_request)

Mark a feed entry

Mark a feed entry as read/unread

### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
CommafeedClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CommafeedClient::FeedEntriesApi.new
mark_request = CommafeedClient::MarkRequest.new({id: 'id_example', read: false}) # MarkRequest | Mark Request

begin
  # Mark a feed entry
  api_instance.mark_entry(mark_request)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedEntriesApi->mark_entry: #{e}"
end
```

#### Using the mark_entry_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> mark_entry_with_http_info(mark_request)

```ruby
begin
  # Mark a feed entry
  data, status_code, headers = api_instance.mark_entry_with_http_info(mark_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedEntriesApi->mark_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mark_request** | [**MarkRequest**](MarkRequest.md) | Mark Request |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## star_entry

> star_entry(star_request)

Star a feed entry

Mark a feed entry as read/unread

### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
CommafeedClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CommafeedClient::FeedEntriesApi.new
star_request = CommafeedClient::StarRequest.new({id: 'id_example', feed_id: 3.56, starred: false}) # StarRequest | Star Request

begin
  # Star a feed entry
  api_instance.star_entry(star_request)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedEntriesApi->star_entry: #{e}"
end
```

#### Using the star_entry_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> star_entry_with_http_info(star_request)

```ruby
begin
  # Star a feed entry
  data, status_code, headers = api_instance.star_entry_with_http_info(star_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedEntriesApi->star_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **star_request** | [**StarRequest**](StarRequest.md) | Star Request |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tag_entry

> tag_entry(tag_request)

Set feed entry tags

### Examples

```ruby
require 'time'
require 'commafeed'
# setup authorization
CommafeedClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CommafeedClient::FeedEntriesApi.new
tag_request = CommafeedClient::TagRequest.new({entry_id: 3.56, tags: ['tags_example']}) # TagRequest | Tag Request

begin
  # Set feed entry tags
  api_instance.tag_entry(tag_request)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedEntriesApi->tag_entry: #{e}"
end
```

#### Using the tag_entry_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> tag_entry_with_http_info(tag_request)

```ruby
begin
  # Set feed entry tags
  data, status_code, headers = api_instance.tag_entry_with_http_info(tag_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedEntriesApi->tag_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_request** | [**TagRequest**](TagRequest.md) | Tag Request |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

