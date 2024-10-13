# OpenapiClient::ServerInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **announcement** | **String** |  | [optional] |
| **version** | **String** |  |  |
| **git_commit** | **String** |  |  |
| **allow_registrations** | **Boolean** |  |  |
| **google_analytics_code** | **String** |  | [optional] |
| **smtp_enabled** | **Boolean** |  |  |
| **demo_account_enabled** | **Boolean** |  |  |
| **websocket_enabled** | **Boolean** |  |  |
| **websocket_ping_interval** | **Integer** |  |  |
| **tree_reload_interval** | **Integer** |  |  |
| **force_refresh_cooldown_duration** | **Integer** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServerInfo.new(
  announcement: null,
  version: null,
  git_commit: null,
  allow_registrations: null,
  google_analytics_code: null,
  smtp_enabled: null,
  demo_account_enabled: null,
  websocket_enabled: null,
  websocket_ping_interval: null,
  tree_reload_interval: null,
  force_refresh_cooldown_duration: null
)
```

