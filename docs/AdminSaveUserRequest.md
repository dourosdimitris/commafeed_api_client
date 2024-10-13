# OpenapiClient::AdminSaveUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | user id | [optional] |
| **name** | **String** | user name |  |
| **email** | **String** | user email, if any | [optional] |
| **password** | **String** | user password | [optional] |
| **enabled** | **Boolean** | account status |  |
| **admin** | **Boolean** | user is admin |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdminSaveUserRequest.new(
  id: null,
  name: null,
  email: null,
  password: null,
  enabled: null,
  admin: null
)
```

