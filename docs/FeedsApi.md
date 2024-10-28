# CommafeedClient::FeedsApi

All URIs are relative to *http://localhost:8082*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**export_opml**](FeedsApi.md#export_opml) | **GET** /rest/feed/export | OPML export |
| [**fetch_feed**](FeedsApi.md#fetch_feed) | **POST** /rest/feed/fetch | Fetch a feed |
| [**get_feed**](FeedsApi.md#get_feed) | **GET** /rest/feed/get/{id} | get feed |
| [**get_feed_entries**](FeedsApi.md#get_feed_entries) | **GET** /rest/feed/entries | Get feed entries |
| [**get_feed_entries_as_feed**](FeedsApi.md#get_feed_entries_as_feed) | **GET** /rest/feed/entriesAsFeed | Get feed entries as a feed |
| [**get_feed_favicon**](FeedsApi.md#get_feed_favicon) | **GET** /rest/feed/favicon/{id} | Fetch a feed&#39;s icon |
| [**import_opml**](FeedsApi.md#import_opml) | **POST** /rest/feed/import | OPML import |
| [**mark_feed_entries**](FeedsApi.md#mark_feed_entries) | **POST** /rest/feed/mark | Mark feed entries |
| [**modify_feed**](FeedsApi.md#modify_feed) | **POST** /rest/feed/modify | Modify a subscription |
| [**queue_all_for_refresh**](FeedsApi.md#queue_all_for_refresh) | **GET** /rest/feed/refreshAll | Queue all feeds of the user for refresh |
| [**queue_for_refresh**](FeedsApi.md#queue_for_refresh) | **POST** /rest/feed/refresh | Queue a feed for refresh |
| [**subscribe**](FeedsApi.md#subscribe) | **POST** /rest/feed/subscribe | Subscribe to a feed |
| [**subscribe_from_url**](FeedsApi.md#subscribe_from_url) | **GET** /rest/feed/subscribe | Subscribe to a feed |
| [**unsubscribe**](FeedsApi.md#unsubscribe) | **POST** /rest/feed/unsubscribe | Unsubscribe from a feed |


## export_opml

> export_opml

OPML export

Export an OPML file of the user's subscriptions

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

api_instance = CommafeedClient::FeedsApi.new

begin
  # OPML export
  api_instance.export_opml
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->export_opml: #{e}"
end
```

#### Using the export_opml_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> export_opml_with_http_info

```ruby
begin
  # OPML export
  data, status_code, headers = api_instance.export_opml_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->export_opml_with_http_info: #{e}"
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
- **Accept**: application/xml


## fetch_feed

> <FeedInfo> fetch_feed(feed_info_request)

Fetch a feed

Fetch a feed by its url

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

api_instance = CommafeedClient::FeedsApi.new
feed_info_request = CommafeedClient::FeedInfoRequest.new({url: 'url_example'}) # FeedInfoRequest | feed url

begin
  # Fetch a feed
  result = api_instance.fetch_feed(feed_info_request)
  p result
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->fetch_feed: #{e}"
end
```

#### Using the fetch_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeedInfo>, Integer, Hash)> fetch_feed_with_http_info(feed_info_request)

```ruby
begin
  # Fetch a feed
  data, status_code, headers = api_instance.fetch_feed_with_http_info(feed_info_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeedInfo>
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->fetch_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feed_info_request** | [**FeedInfoRequest**](FeedInfoRequest.md) | feed url |  |

### Return type

[**FeedInfo**](FeedInfo.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_feed

> <Subscription> get_feed(id)

get feed

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

api_instance = CommafeedClient::FeedsApi.new
id = 789 # Integer | user id

begin
  # get feed
  result = api_instance.get_feed(id)
  p result
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->get_feed: #{e}"
end
```

#### Using the get_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Subscription>, Integer, Hash)> get_feed_with_http_info(id)

```ruby
begin
  # get feed
  data, status_code, headers = api_instance.get_feed_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Subscription>
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->get_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | user id |  |

### Return type

[**Subscription**](Subscription.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feed_entries

> <Entries> get_feed_entries(id, read_type, opts)

Get feed entries

Get a list of feed entries

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

api_instance = CommafeedClient::FeedsApi.new
id = 'id_example' # String | id of the feed
read_type = 'all' # String | all entries or only unread ones
opts = {
  newer_than: 789, # Integer | only entries newer than this
  offset: 56, # Integer | offset for paging
  limit: 56, # Integer | limit for paging, default 20, maximum 1000
  order: 'asc', # String | ordering
  keywords: 'keywords_example' # String | search for keywords in either the title or the content of the entries, separated by spaces, 3 characters minimum
}

begin
  # Get feed entries
  result = api_instance.get_feed_entries(id, read_type, opts)
  p result
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->get_feed_entries: #{e}"
end
```

#### Using the get_feed_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Entries>, Integer, Hash)> get_feed_entries_with_http_info(id, read_type, opts)

```ruby
begin
  # Get feed entries
  data, status_code, headers = api_instance.get_feed_entries_with_http_info(id, read_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Entries>
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->get_feed_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id of the feed |  |
| **read_type** | **String** | all entries or only unread ones | [default to &#39;unread&#39;] |
| **newer_than** | **Integer** | only entries newer than this | [optional] |
| **offset** | **Integer** | offset for paging | [optional][default to 0] |
| **limit** | **Integer** | limit for paging, default 20, maximum 1000 | [optional][default to 20] |
| **order** | **String** | ordering | [optional][default to &#39;desc&#39;] |
| **keywords** | **String** | search for keywords in either the title or the content of the entries, separated by spaces, 3 characters minimum | [optional] |

### Return type

[**Entries**](Entries.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feed_entries_as_feed

> get_feed_entries_as_feed(id, read_type, opts)

Get feed entries as a feed

Get a feed of feed entries

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

api_instance = CommafeedClient::FeedsApi.new
id = 'id_example' # String | id of the feed
read_type = 'all' # String | all entries or only unread ones
opts = {
  newer_than: 789, # Integer | only entries newer than this
  offset: 56, # Integer | offset for paging
  limit: 56, # Integer | limit for paging, default 20, maximum 1000
  order: 'asc', # String | date ordering
  keywords: 'keywords_example' # String | search for keywords in either the title or the content of the entries, separated by spaces, 3 characters minimum
}

begin
  # Get feed entries as a feed
  api_instance.get_feed_entries_as_feed(id, read_type, opts)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->get_feed_entries_as_feed: #{e}"
end
```

#### Using the get_feed_entries_as_feed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_feed_entries_as_feed_with_http_info(id, read_type, opts)

```ruby
begin
  # Get feed entries as a feed
  data, status_code, headers = api_instance.get_feed_entries_as_feed_with_http_info(id, read_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->get_feed_entries_as_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id of the feed |  |
| **read_type** | **String** | all entries or only unread ones | [default to &#39;all&#39;] |
| **newer_than** | **Integer** | only entries newer than this | [optional] |
| **offset** | **Integer** | offset for paging | [optional][default to 0] |
| **limit** | **Integer** | limit for paging, default 20, maximum 1000 | [optional][default to 20] |
| **order** | **String** | date ordering | [optional][default to &#39;desc&#39;] |
| **keywords** | **String** | search for keywords in either the title or the content of the entries, separated by spaces, 3 characters minimum | [optional] |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/xml


## get_feed_favicon

> get_feed_favicon(id)

Fetch a feed's icon

Fetch a feed's icon

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

api_instance = CommafeedClient::FeedsApi.new
id = 789 # Integer | subscription id

begin
  # Fetch a feed's icon
  api_instance.get_feed_favicon(id)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->get_feed_favicon: #{e}"
end
```

#### Using the get_feed_favicon_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_feed_favicon_with_http_info(id)

```ruby
begin
  # Fetch a feed's icon
  data, status_code, headers = api_instance.get_feed_favicon_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->get_feed_favicon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | subscription id |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_opml

> import_opml

OPML import

Import an OPML file, posted as a FORM with the 'file' name

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

api_instance = CommafeedClient::FeedsApi.new

begin
  # OPML import
  api_instance.import_opml
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->import_opml: #{e}"
end
```

#### Using the import_opml_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> import_opml_with_http_info

```ruby
begin
  # OPML import
  data, status_code, headers = api_instance.import_opml_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->import_opml_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## mark_feed_entries

> mark_feed_entries(mark_request)

Mark feed entries

Mark feed entries as read (unread is not supported)

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

api_instance = CommafeedClient::FeedsApi.new
mark_request = CommafeedClient::MarkRequest.new({id: 'id_example', read: false}) # MarkRequest | Mark request

begin
  # Mark feed entries
  api_instance.mark_feed_entries(mark_request)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->mark_feed_entries: #{e}"
end
```

#### Using the mark_feed_entries_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> mark_feed_entries_with_http_info(mark_request)

```ruby
begin
  # Mark feed entries
  data, status_code, headers = api_instance.mark_feed_entries_with_http_info(mark_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->mark_feed_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mark_request** | [**MarkRequest**](MarkRequest.md) | Mark request |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## modify_feed

> modify_feed(feed_modification_request)

Modify a subscription

Modify a feed subscription

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

api_instance = CommafeedClient::FeedsApi.new
feed_modification_request = CommafeedClient::FeedModificationRequest.new({id: 3.56}) # FeedModificationRequest | subscription id

begin
  # Modify a subscription
  api_instance.modify_feed(feed_modification_request)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->modify_feed: #{e}"
end
```

#### Using the modify_feed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> modify_feed_with_http_info(feed_modification_request)

```ruby
begin
  # Modify a subscription
  data, status_code, headers = api_instance.modify_feed_with_http_info(feed_modification_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->modify_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feed_modification_request** | [**FeedModificationRequest**](FeedModificationRequest.md) | subscription id |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## queue_all_for_refresh

> queue_all_for_refresh

Queue all feeds of the user for refresh

Manually add all feeds of the user to the refresh queue

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

api_instance = CommafeedClient::FeedsApi.new

begin
  # Queue all feeds of the user for refresh
  api_instance.queue_all_for_refresh
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->queue_all_for_refresh: #{e}"
end
```

#### Using the queue_all_for_refresh_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> queue_all_for_refresh_with_http_info

```ruby
begin
  # Queue all feeds of the user for refresh
  data, status_code, headers = api_instance.queue_all_for_refresh_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->queue_all_for_refresh_with_http_info: #{e}"
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


## queue_for_refresh

> queue_for_refresh(id_request)

Queue a feed for refresh

Manually add a feed to the refresh queue

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

api_instance = CommafeedClient::FeedsApi.new
id_request = CommafeedClient::IDRequest.new({id: 3.56}) # IDRequest | Feed id

begin
  # Queue a feed for refresh
  api_instance.queue_for_refresh(id_request)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->queue_for_refresh: #{e}"
end
```

#### Using the queue_for_refresh_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> queue_for_refresh_with_http_info(id_request)

```ruby
begin
  # Queue a feed for refresh
  data, status_code, headers = api_instance.queue_for_refresh_with_http_info(id_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->queue_for_refresh_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id_request** | [**IDRequest**](IDRequest.md) | Feed id |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## subscribe

> Integer subscribe(subscribe_request)

Subscribe to a feed

Subscribe to a feed

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

api_instance = CommafeedClient::FeedsApi.new
subscribe_request = CommafeedClient::SubscribeRequest.new({url: 'url_example', title: 'title_example'}) # SubscribeRequest | subscription request

begin
  # Subscribe to a feed
  result = api_instance.subscribe(subscribe_request)
  p result
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->subscribe: #{e}"
end
```

#### Using the subscribe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> subscribe_with_http_info(subscribe_request)

```ruby
begin
  # Subscribe to a feed
  data, status_code, headers = api_instance.subscribe_with_http_info(subscribe_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->subscribe_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscribe_request** | [**SubscribeRequest**](SubscribeRequest.md) | subscription request |  |

### Return type

**Integer**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## subscribe_from_url

> subscribe_from_url(url)

Subscribe to a feed

Subscribe to a feed

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

api_instance = CommafeedClient::FeedsApi.new
url = 'url_example' # String | feed url

begin
  # Subscribe to a feed
  api_instance.subscribe_from_url(url)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->subscribe_from_url: #{e}"
end
```

#### Using the subscribe_from_url_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subscribe_from_url_with_http_info(url)

```ruby
begin
  # Subscribe to a feed
  data, status_code, headers = api_instance.subscribe_from_url_with_http_info(url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->subscribe_from_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | feed url |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unsubscribe

> unsubscribe(id_request)

Unsubscribe from a feed

Unsubscribe from a feed

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

api_instance = CommafeedClient::FeedsApi.new
id_request = CommafeedClient::IDRequest.new({id: 3.56}) # IDRequest | 

begin
  # Unsubscribe from a feed
  api_instance.unsubscribe(id_request)
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->unsubscribe: #{e}"
end
```

#### Using the unsubscribe_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unsubscribe_with_http_info(id_request)

```ruby
begin
  # Unsubscribe from a feed
  data, status_code, headers = api_instance.unsubscribe_with_http_info(id_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CommafeedClient::ApiError => e
  puts "Error when calling FeedsApi->unsubscribe_with_http_info: #{e}"
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

