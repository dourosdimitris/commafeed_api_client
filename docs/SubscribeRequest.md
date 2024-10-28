# CommafeedClient::SubscribeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | url of the feed |  |
| **title** | **String** | name of the feed for the user |  |
| **category_id** | **String** | id of the user category to place the feed in | [optional] |

## Example

```ruby
require 'commafeed'

instance = CommafeedClient::SubscribeRequest.new(
  url: null,
  title: null,
  category_id: null
)
```

