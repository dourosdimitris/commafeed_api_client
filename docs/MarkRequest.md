# OpenapiClient::MarkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | entry id, category id, &#39;all&#39; or &#39;starred&#39; |  |
| **read** | **Boolean** | mark as read or unread |  |
| **older_than** | **Integer** | mark only entries older than this | [optional] |
| **inserted_before** | **Integer** | pass the timestamp you got from the entry list to avoid marking entries that may have been fetched in the mean time and never displayed | [optional] |
| **keywords** | **String** | only mark read if a feed has these keywords in the title or rss content | [optional] |
| **excluded_subscriptions** | **Array&lt;Integer&gt;** | if marking a category or &#39;all&#39;, exclude those subscriptions from the marking | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MarkRequest.new(
  id: null,
  read: null,
  older_than: null,
  inserted_before: null,
  keywords: null,
  excluded_subscriptions: null
)
```

