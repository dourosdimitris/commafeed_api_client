# CommafeedClient::UserModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | user id |  |
| **name** | **String** | user name |  |
| **email** | **String** | user email, if any | [optional] |
| **api_key** | **String** | api key | [optional] |
| **password** | **String** | user password, never returned by the api | [optional] |
| **enabled** | **Boolean** | account status |  |
| **created** | **Float** | account creation date | [optional] |
| **last_login** | **Float** | last login date | [optional] |
| **admin** | **Boolean** | user is admin |  |
| **last_force_refresh** | **Float** | user last force refresh | [optional] |

## Example

```ruby
require 'commafeed'

instance = CommafeedClient::UserModel.new(
  id: null,
  name: null,
  email: null,
  api_key: null,
  password: null,
  enabled: null,
  created: null,
  last_login: null,
  admin: null,
  last_force_refresh: null
)
```

