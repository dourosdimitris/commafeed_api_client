# CommafeedClient::AddCategoryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | name |  |
| **parent_id** | **String** | parent category id, if any | [optional] |

## Example

```ruby
require 'commafeed'

instance = CommafeedClient::AddCategoryRequest.new(
  name: null,
  parent_id: null
)
```

