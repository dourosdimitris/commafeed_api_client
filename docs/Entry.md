# OpenapiClient::Entry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | entry id |  |
| **guid** | **String** | entry guid |  |
| **title** | **String** | entry title |  |
| **content** | **String** | entry content |  |
| **categories** | **String** | comma-separated list of categories | [optional] |
| **rtl** | **Boolean** | whether entry content and title are rtl |  |
| **author** | **String** | entry author | [optional] |
| **enclosure_url** | **String** | entry enclosure url, if any | [optional] |
| **enclosure_type** | **String** | entry enclosure mime type, if any | [optional] |
| **media_description** | **String** | entry media description, if any | [optional] |
| **media_thumbnail_url** | **String** | entry media thumbnail url, if any | [optional] |
| **media_thumbnail_width** | **Integer** | entry media thumbnail width, if any | [optional] |
| **media_thumbnail_height** | **Integer** | entry media thumbnail height, if any | [optional] |
| **date** | **Float** | entry publication date |  |
| **inserted_date** | **Float** | entry insertion date in the database |  |
| **feed_id** | **String** | feed id |  |
| **feed_name** | **String** | feed name |  |
| **feed_url** | **String** | this entry&#39;s feed url |  |
| **feed_link** | **String** | this entry&#39;s website url |  |
| **icon_url** | **String** | The favicon url to use for this feed |  |
| **url** | **String** | entry url |  |
| **read** | **Boolean** | read status |  |
| **starred** | **Boolean** | starred status |  |
| **markable** | **Boolean** | whether the entry is still markable (old entry statuses are discarded) |  |
| **tags** | **Array&lt;String&gt;** | tags |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Entry.new(
  id: null,
  guid: null,
  title: null,
  content: null,
  categories: null,
  rtl: null,
  author: null,
  enclosure_url: null,
  enclosure_type: null,
  media_description: null,
  media_thumbnail_url: null,
  media_thumbnail_width: null,
  media_thumbnail_height: null,
  date: null,
  inserted_date: null,
  feed_id: null,
  feed_name: null,
  feed_url: null,
  feed_link: null,
  icon_url: null,
  url: null,
  read: null,
  starred: null,
  markable: null,
  tags: null
)
```

