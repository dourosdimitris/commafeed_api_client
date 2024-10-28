# CommafeedClient::FeedCategoriesApi

All URIs are relative to *http://localhost:8082*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_category**](FeedCategoriesApi.md#add_category) | **POST** /rest/category/add | Add a category |
| [**collapse_category**](FeedCategoriesApi.md#collapse_category) | **POST** /rest/category/collapse | Collapse a category |
| [**delete_category**](FeedCategoriesApi.md#delete_category) | **POST** /rest/category/delete | Delete a category |
| [**get_category_entries**](FeedCategoriesApi.md#get_category_entries) | **GET** /rest/category/entries | Get category entries |
| [**get_category_entries_as_feed**](FeedCategoriesApi.md#get_category_entries_as_feed) | **GET** /rest/category/entriesAsFeed | Get category entries as feed |
| [**get_root_category**](FeedCategoriesApi.md#get_root_category) | **GET** /rest/category/get | Get root category |
| [**get_unread_count**](FeedCategoriesApi.md#get_unread_count) | **GET** /rest/category/unreadCount | Get unread count for feed subscriptions |
| [**mark_category_entries**](FeedCategoriesApi.md#mark_category_entries) | **POST** /rest/category/mark | Mark category entries |
| [**modify_category**](FeedCategoriesApi.md#modify_category) | **POST** /rest/category/modify | Rename a category |


## add_category

> Integer add_category(add_category_request)

Add a category

Add a new feed category

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

api_instance = CommafeedClient::FeedCategoriesApi.new
add_category_request = CommafeedClient::AddCategoryRequest.new({name: 'name_example'}) # AddCategoryRequest | 

begin
  # Add a category
  result = api_instance.add_category(add_category_request)
  p result
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->add_category: #{e}"
end
```

#### Using the add_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> add_category_with_http_info(add_category_request)

```ruby
begin
  # Add a category
  data, status_code, headers = api_instance.add_category_with_http_info(add_category_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->add_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_category_request** | [**AddCategoryRequest**](AddCategoryRequest.md) |  |  |

### Return type

**Integer**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## collapse_category

> collapse_category(collapse_request)

Collapse a category

Save collapsed or expanded status for a category

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

api_instance = CommafeedClient::FeedCategoriesApi.new
collapse_request = CommafeedClient::CollapseRequest.new({id: 3.56, collapse: false}) # CollapseRequest | 

begin
  # Collapse a category
  api_instance.collapse_category(collapse_request)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->collapse_category: #{e}"
end
```

#### Using the collapse_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> collapse_category_with_http_info(collapse_request)

```ruby
begin
  # Collapse a category
  data, status_code, headers = api_instance.collapse_category_with_http_info(collapse_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->collapse_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collapse_request** | [**CollapseRequest**](CollapseRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_category

> delete_category(id_request)

Delete a category

Delete an existing feed category

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

api_instance = CommafeedClient::FeedCategoriesApi.new
id_request = CommafeedClient::IDRequest.new({id: 3.56}) # IDRequest | 

begin
  # Delete a category
  api_instance.delete_category(id_request)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->delete_category: #{e}"
end
```

#### Using the delete_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_category_with_http_info(id_request)

```ruby
begin
  # Delete a category
  data, status_code, headers = api_instance.delete_category_with_http_info(id_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->delete_category_with_http_info: #{e}"
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


## get_category_entries

> <Entries> get_category_entries(id, read_type, opts)

Get category entries

Get a list of category entries

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

api_instance = CommafeedClient::FeedCategoriesApi.new
id = 'id_example' # String | id of the category, 'all' or 'starred'
read_type = 'all' # String | all entries or only unread ones
opts = {
  newer_than: 789, # Integer | only entries newer than this
  offset: 56, # Integer | offset for paging
  limit: 56, # Integer | limit for paging, default 20, maximum 1000
  order: 'asc', # String | ordering
  keywords: 'keywords_example', # String | search for keywords in either the title or the content of the entries, separated by spaces, 3 characters minimum
  excluded_subscription_ids: 'excluded_subscription_ids_example', # String | comma-separated list of excluded subscription ids
  tag: 'tag_example' # String | keep only entries tagged with this tag
}

begin
  # Get category entries
  result = api_instance.get_category_entries(id, read_type, opts)
  p result
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->get_category_entries: #{e}"
end
```

#### Using the get_category_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Entries>, Integer, Hash)> get_category_entries_with_http_info(id, read_type, opts)

```ruby
begin
  # Get category entries
  data, status_code, headers = api_instance.get_category_entries_with_http_info(id, read_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Entries>
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->get_category_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id of the category, &#39;all&#39; or &#39;starred&#39; |  |
| **read_type** | **String** | all entries or only unread ones | [default to &#39;unread&#39;] |
| **newer_than** | **Integer** | only entries newer than this | [optional] |
| **offset** | **Integer** | offset for paging | [optional][default to 0] |
| **limit** | **Integer** | limit for paging, default 20, maximum 1000 | [optional][default to 20] |
| **order** | **String** | ordering | [optional][default to &#39;desc&#39;] |
| **keywords** | **String** | search for keywords in either the title or the content of the entries, separated by spaces, 3 characters minimum | [optional] |
| **excluded_subscription_ids** | **String** | comma-separated list of excluded subscription ids | [optional] |
| **tag** | **String** | keep only entries tagged with this tag | [optional] |

### Return type

[**Entries**](Entries.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_category_entries_as_feed

> get_category_entries_as_feed(id, read_type, opts)

Get category entries as feed

Get a feed of category entries

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

api_instance = CommafeedClient::FeedCategoriesApi.new
id = 'id_example' # String | id of the category, 'all' or 'starred'
read_type = 'all' # String | all entries or only unread ones
opts = {
  newer_than: 789, # Integer | only entries newer than this
  offset: 56, # Integer | offset for paging
  limit: 56, # Integer | limit for paging, default 20, maximum 1000
  order: 'asc', # String | date ordering
  keywords: 'keywords_example', # String | search for keywords in either the title or the content of the entries, separated by spaces, 3 characters minimum
  excluded_subscription_ids: 'excluded_subscription_ids_example', # String | comma-separated list of excluded subscription ids
  tag: 'tag_example' # String | keep only entries tagged with this tag
}

begin
  # Get category entries as feed
  api_instance.get_category_entries_as_feed(id, read_type, opts)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->get_category_entries_as_feed: #{e}"
end
```

#### Using the get_category_entries_as_feed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_category_entries_as_feed_with_http_info(id, read_type, opts)

```ruby
begin
  # Get category entries as feed
  data, status_code, headers = api_instance.get_category_entries_as_feed_with_http_info(id, read_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->get_category_entries_as_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id of the category, &#39;all&#39; or &#39;starred&#39; |  |
| **read_type** | **String** | all entries or only unread ones | [default to &#39;all&#39;] |
| **newer_than** | **Integer** | only entries newer than this | [optional] |
| **offset** | **Integer** | offset for paging | [optional][default to 0] |
| **limit** | **Integer** | limit for paging, default 20, maximum 1000 | [optional][default to 20] |
| **order** | **String** | date ordering | [optional][default to &#39;desc&#39;] |
| **keywords** | **String** | search for keywords in either the title or the content of the entries, separated by spaces, 3 characters minimum | [optional] |
| **excluded_subscription_ids** | **String** | comma-separated list of excluded subscription ids | [optional] |
| **tag** | **String** | keep only entries tagged with this tag | [optional] |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/xml


## get_root_category

> <Category> get_root_category

Get root category

Get all categories and subscriptions of the user

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

api_instance = CommafeedClient::FeedCategoriesApi.new

begin
  # Get root category
  result = api_instance.get_root_category
  p result
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->get_root_category: #{e}"
end
```

#### Using the get_root_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Category>, Integer, Hash)> get_root_category_with_http_info

```ruby
begin
  # Get root category
  data, status_code, headers = api_instance.get_root_category_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Category>
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->get_root_category_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Category**](Category.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unread_count

> <Array<UnreadCount>> get_unread_count

Get unread count for feed subscriptions

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

api_instance = CommafeedClient::FeedCategoriesApi.new

begin
  # Get unread count for feed subscriptions
  result = api_instance.get_unread_count
  p result
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->get_unread_count: #{e}"
end
```

#### Using the get_unread_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UnreadCount>>, Integer, Hash)> get_unread_count_with_http_info

```ruby
begin
  # Get unread count for feed subscriptions
  data, status_code, headers = api_instance.get_unread_count_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UnreadCount>>
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->get_unread_count_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UnreadCount&gt;**](UnreadCount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mark_category_entries

> mark_category_entries(mark_request)

Mark category entries

Mark feed entries of this category as read

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

api_instance = CommafeedClient::FeedCategoriesApi.new
mark_request = CommafeedClient::MarkRequest.new({id: 'id_example', read: false}) # MarkRequest | category id, or 'all'

begin
  # Mark category entries
  api_instance.mark_category_entries(mark_request)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->mark_category_entries: #{e}"
end
```

#### Using the mark_category_entries_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> mark_category_entries_with_http_info(mark_request)

```ruby
begin
  # Mark category entries
  data, status_code, headers = api_instance.mark_category_entries_with_http_info(mark_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->mark_category_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mark_request** | [**MarkRequest**](MarkRequest.md) | category id, or &#39;all&#39; |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## modify_category

> modify_category(category_modification_request)

Rename a category

Rename an existing feed category

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

api_instance = CommafeedClient::FeedCategoriesApi.new
category_modification_request = CommafeedClient::CategoryModificationRequest.new({id: 3.56}) # CategoryModificationRequest | 

begin
  # Rename a category
  api_instance.modify_category(category_modification_request)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->modify_category: #{e}"
end
```

#### Using the modify_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> modify_category_with_http_info(category_modification_request)

```ruby
begin
  # Rename a category
  data, status_code, headers = api_instance.modify_category_with_http_info(category_modification_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedCategoriesApi->modify_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_modification_request** | [**CategoryModificationRequest**](CategoryModificationRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

