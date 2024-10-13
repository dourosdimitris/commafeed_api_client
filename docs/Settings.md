# OpenapiClient::Settings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **language** | **String** | user&#39;s preferred language, english if none |  |
| **reading_mode** | **String** | user reads all entries or unread entries only |  |
| **reading_order** | **String** | user reads entries in ascending or descending order |  |
| **show_read** | **Boolean** | user wants category and feeds with no unread entries shown |  |
| **scroll_marks** | **Boolean** | In expanded view, scroll through entries mark them as read |  |
| **custom_css** | **String** | user&#39;s custom css for the website | [optional] |
| **custom_js** | **String** | user&#39;s custom js for the website | [optional] |
| **scroll_speed** | **Integer** | user&#39;s preferred scroll speed when navigating between entries |  |
| **scroll_mode** | **String** | whether to scroll to the selected entry |  |
| **entries_to_keep_on_top_when_scrolling** | **Integer** | number of entries to keep above the selected entry when scrolling |  |
| **star_icon_display_mode** | **String** | whether to show the star icon in the header of entries |  |
| **external_link_icon_display_mode** | **String** | whether to show the external link icon in the header of entries |  |
| **mark_all_as_read_confirmation** | **Boolean** | ask for confirmation when marking all entries as read |  |
| **custom_context_menu** | **Boolean** | show commafeed&#39;s own context menu on right click |  |
| **mobile_footer** | **Boolean** | on mobile, show action buttons at the bottom of the screen |  |
| **unread_count_title** | **Boolean** | show unread count in the title |  |
| **unread_count_favicon** | **Boolean** | show unread count in the favicon |  |
| **sharing_settings** | [**SharingSettings**](SharingSettings.md) |  |  |

## Example

```ruby
require 'commafeed'

instance = OpenapiClient::Settings.new(
  language: null,
  reading_mode: null,
  reading_order: null,
  show_read: null,
  scroll_marks: null,
  custom_css: null,
  custom_js: null,
  scroll_speed: null,
  scroll_mode: null,
  entries_to_keep_on_top_when_scrolling: null,
  star_icon_display_mode: null,
  external_link_icon_display_mode: null,
  mark_all_as_read_confirmation: null,
  custom_context_menu: null,
  mobile_footer: null,
  unread_count_title: null,
  unread_count_favicon: null,
  sharing_settings: null
)
```

