# OpenapiClient::Category

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | category id |  |
| **parent_id** | **String** | parent category id | [optional] |
| **parent_name** | **String** | parent category name | [optional] |
| **name** | **String** | category id |  |
| **children** | [**Array&lt;Category&gt;**](Category.md) | category children categories |  |
| **feeds** | [**Array&lt;Subscription&gt;**](Subscription.md) | category feeds |  |
| **expanded** | **Boolean** | whether the category is expanded or collapsed |  |
| **position** | **Integer** | position of the category in the list |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Category.new(
  id: null,
  parent_id: null,
  parent_name: null,
  name: null,
  children: null,
  feeds: null,
  expanded: null,
  position: null
)
```

