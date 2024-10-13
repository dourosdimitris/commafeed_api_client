# OpenapiClient::Entries

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | name of the feed or the category requested |  |
| **message** | **String** | error or warning message | [optional] |
| **error_count** | **Integer** | times the server tried to refresh the feed and failed |  |
| **feed_link** | **String** | URL of the website, extracted from the feed, only filled if querying for feed entries, not category entries | [optional] |
| **timestamp** | **Integer** | list generation timestamp |  |
| **has_more** | **Boolean** | if the query has more elements |  |
| **offset** | **Integer** | the requested offset | [optional] |
| **limit** | **Integer** | the requested limit | [optional] |
| **entries** | [**Array&lt;Entry&gt;**](Entry.md) | list of entries |  |
| **ignored_read_status** | **Boolean** | if true, the unread flag was ignored in the request, all entries are returned regardless of their read status |  |

## Example

```ruby
require 'commafeed'

instance = OpenapiClient::Entries.new(
  name: null,
  message: null,
  error_count: null,
  feed_link: null,
  timestamp: null,
  has_more: null,
  offset: null,
  limit: null,
  entries: null,
  ignored_read_status: null
)
```

