# OpenapiClient::FeedModificationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | id |  |
| **name** | **String** | new name, null if not changed | [optional] |
| **category_id** | **String** | new parent category id | [optional] |
| **position** | **Integer** | new display position, null if not changed | [optional] |
| **filter** | **String** | JEXL string evaluated on new entries to mark them as read if they do not match | [optional] |

## Example

```ruby
require 'commafeed'

instance = OpenapiClient::FeedModificationRequest.new(
  id: null,
  name: null,
  category_id: null,
  position: null,
  filter: null
)
```

