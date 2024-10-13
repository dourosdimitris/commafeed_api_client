# OpenapiClient::CategoryModificationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | id |  |
| **name** | **String** | new name, null if not changed | [optional] |
| **parent_id** | **String** | new parent category id | [optional] |
| **position** | **Integer** | new display position, null if not changed | [optional] |

## Example

```ruby
require 'commafeed'

instance = OpenapiClient::CategoryModificationRequest.new(
  id: null,
  name: null,
  parent_id: null,
  position: null
)
```

