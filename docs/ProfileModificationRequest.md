# CommafeedClient::ProfileModificationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_password** | **String** | current user password, required to change profile data |  |
| **email** | **String** | changes email of the user, if specified | [optional] |
| **new_password** | **String** | changes password of the user, if specified | [optional] |
| **new_api_key** | **Boolean** | generate a new api key | [optional] |

## Example

```ruby
require 'commafeed'

instance = CommafeedClient::ProfileModificationRequest.new(
  current_password: null,
  email: null,
  new_password: null,
  new_api_key: null
)
```

