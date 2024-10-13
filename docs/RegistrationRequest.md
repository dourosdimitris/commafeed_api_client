# OpenapiClient::RegistrationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | username, between 3 and 32 characters |  |
| **password** | **String** | password, minimum 6 characters |  |
| **email** | **String** | email address for password recovery |  |

## Example

```ruby
require 'commafeed'

instance = OpenapiClient::RegistrationRequest.new(
  name: null,
  password: null,
  email: null
)
```

