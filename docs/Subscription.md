# OpenapiClient::Subscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | subscription id |  |
| **name** | **String** | subscription name |  |
| **message** | **String** | error message while fetching the feed | [optional] |
| **error_count** | **Integer** | error count |  |
| **last_refresh** | **Float** | last time the feed was refreshed | [optional] |
| **next_refresh** | **Float** | next time the feed refresh is planned, null if refresh is already queued | [optional] |
| **feed_url** | **String** | this subscription&#39;s feed url |  |
| **feed_link** | **String** | this subscription&#39;s website url |  |
| **icon_url** | **String** | The favicon url to use for this feed |  |
| **unread** | **Integer** | unread count |  |
| **category_id** | **String** | category id | [optional] |
| **position** | **Integer** | position of the subscription&#39;s in the list | [optional] |
| **newest_item_time** | **Float** | date of the newest item | [optional] |
| **filter** | **String** | JEXL string evaluated on new entries to mark them as read if they do not match | [optional] |

## Example

```ruby
require 'commafeed'

instance = OpenapiClient::Subscription.new(
  id: null,
  name: null,
  message: null,
  error_count: null,
  last_refresh: null,
  next_refresh: null,
  feed_url: null,
  feed_link: null,
  icon_url: null,
  unread: null,
  category_id: null,
  position: null,
  newest_item_time: null,
  filter: null
)
```

