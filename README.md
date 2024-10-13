# openapi_client

OpenapiClient - the Ruby gem for the CommaFeed API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Generator version: 7.9.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

# Setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'
end

api_instance = OpenapiClient::AdminApi.new
id_request = OpenapiClient::IDRequest.new({id: 3.56}) # IDRequest | 

begin
  #Delete a user
  api_instance.admin_delete_user(id_request)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AdminApi->admin_delete_user: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8082*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::AdminApi* | [**admin_delete_user**](docs/AdminApi.md#admin_delete_user) | **POST** /rest/admin/user/delete | Delete a user
*OpenapiClient::AdminApi* | [**admin_get_user**](docs/AdminApi.md#admin_get_user) | **GET** /rest/admin/user/get/{id} | Get user information
*OpenapiClient::AdminApi* | [**admin_get_users**](docs/AdminApi.md#admin_get_users) | **GET** /rest/admin/user/getAll | Get all users
*OpenapiClient::AdminApi* | [**admin_save_user**](docs/AdminApi.md#admin_save_user) | **POST** /rest/admin/user/save | Save or update a user
*OpenapiClient::AdminApi* | [**get_metrics**](docs/AdminApi.md#get_metrics) | **GET** /rest/admin/metrics | Retrieve server metrics
*OpenapiClient::FeedCategoriesApi* | [**add_category**](docs/FeedCategoriesApi.md#add_category) | **POST** /rest/category/add | Add a category
*OpenapiClient::FeedCategoriesApi* | [**collapse_category**](docs/FeedCategoriesApi.md#collapse_category) | **POST** /rest/category/collapse | Collapse a category
*OpenapiClient::FeedCategoriesApi* | [**delete_category**](docs/FeedCategoriesApi.md#delete_category) | **POST** /rest/category/delete | Delete a category
*OpenapiClient::FeedCategoriesApi* | [**get_category_entries**](docs/FeedCategoriesApi.md#get_category_entries) | **GET** /rest/category/entries | Get category entries
*OpenapiClient::FeedCategoriesApi* | [**get_category_entries_as_feed**](docs/FeedCategoriesApi.md#get_category_entries_as_feed) | **GET** /rest/category/entriesAsFeed | Get category entries as feed
*OpenapiClient::FeedCategoriesApi* | [**get_root_category**](docs/FeedCategoriesApi.md#get_root_category) | **GET** /rest/category/get | Get root category
*OpenapiClient::FeedCategoriesApi* | [**get_unread_count**](docs/FeedCategoriesApi.md#get_unread_count) | **GET** /rest/category/unreadCount | Get unread count for feed subscriptions
*OpenapiClient::FeedCategoriesApi* | [**mark_category_entries**](docs/FeedCategoriesApi.md#mark_category_entries) | **POST** /rest/category/mark | Mark category entries
*OpenapiClient::FeedCategoriesApi* | [**modify_category**](docs/FeedCategoriesApi.md#modify_category) | **POST** /rest/category/modify | Rename a category
*OpenapiClient::FeedEntriesApi* | [**get_tags**](docs/FeedEntriesApi.md#get_tags) | **GET** /rest/entry/tags | Get list of tags for the user
*OpenapiClient::FeedEntriesApi* | [**mark_entries**](docs/FeedEntriesApi.md#mark_entries) | **POST** /rest/entry/markMultiple | Mark multiple feed entries
*OpenapiClient::FeedEntriesApi* | [**mark_entry**](docs/FeedEntriesApi.md#mark_entry) | **POST** /rest/entry/mark | Mark a feed entry
*OpenapiClient::FeedEntriesApi* | [**star_entry**](docs/FeedEntriesApi.md#star_entry) | **POST** /rest/entry/star | Star a feed entry
*OpenapiClient::FeedEntriesApi* | [**tag_entry**](docs/FeedEntriesApi.md#tag_entry) | **POST** /rest/entry/tag | Set feed entry tags
*OpenapiClient::FeedsApi* | [**export_opml**](docs/FeedsApi.md#export_opml) | **GET** /rest/feed/export | OPML export
*OpenapiClient::FeedsApi* | [**fetch_feed**](docs/FeedsApi.md#fetch_feed) | **POST** /rest/feed/fetch | Fetch a feed
*OpenapiClient::FeedsApi* | [**get_feed**](docs/FeedsApi.md#get_feed) | **GET** /rest/feed/get/{id} | get feed
*OpenapiClient::FeedsApi* | [**get_feed_entries**](docs/FeedsApi.md#get_feed_entries) | **GET** /rest/feed/entries | Get feed entries
*OpenapiClient::FeedsApi* | [**get_feed_entries_as_feed**](docs/FeedsApi.md#get_feed_entries_as_feed) | **GET** /rest/feed/entriesAsFeed | Get feed entries as a feed
*OpenapiClient::FeedsApi* | [**get_feed_favicon**](docs/FeedsApi.md#get_feed_favicon) | **GET** /rest/feed/favicon/{id} | Fetch a feed's icon
*OpenapiClient::FeedsApi* | [**import_opml**](docs/FeedsApi.md#import_opml) | **POST** /rest/feed/import | OPML import
*OpenapiClient::FeedsApi* | [**mark_feed_entries**](docs/FeedsApi.md#mark_feed_entries) | **POST** /rest/feed/mark | Mark feed entries
*OpenapiClient::FeedsApi* | [**modify_feed**](docs/FeedsApi.md#modify_feed) | **POST** /rest/feed/modify | Modify a subscription
*OpenapiClient::FeedsApi* | [**queue_all_for_refresh**](docs/FeedsApi.md#queue_all_for_refresh) | **GET** /rest/feed/refreshAll | Queue all feeds of the user for refresh
*OpenapiClient::FeedsApi* | [**queue_for_refresh**](docs/FeedsApi.md#queue_for_refresh) | **POST** /rest/feed/refresh | Queue a feed for refresh
*OpenapiClient::FeedsApi* | [**subscribe**](docs/FeedsApi.md#subscribe) | **POST** /rest/feed/subscribe | Subscribe to a feed
*OpenapiClient::FeedsApi* | [**subscribe_from_url**](docs/FeedsApi.md#subscribe_from_url) | **GET** /rest/feed/subscribe | Subscribe to a feed
*OpenapiClient::FeedsApi* | [**unsubscribe**](docs/FeedsApi.md#unsubscribe) | **POST** /rest/feed/unsubscribe | Unsubscribe from a feed
*OpenapiClient::ServerApi* | [**get_proxied_image**](docs/ServerApi.md#get_proxied_image) | **GET** /rest/server/proxy | proxy image
*OpenapiClient::ServerApi* | [**get_server_infos**](docs/ServerApi.md#get_server_infos) | **GET** /rest/server/get | Get server infos
*OpenapiClient::UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **POST** /rest/user/profile/deleteAccount | Delete the user account
*OpenapiClient::UsersApi* | [**get_user_profile**](docs/UsersApi.md#get_user_profile) | **GET** /rest/user/profile | Retrieve user's profile
*OpenapiClient::UsersApi* | [**get_user_settings**](docs/UsersApi.md#get_user_settings) | **GET** /rest/user/settings | Retrieve user settings
*OpenapiClient::UsersApi* | [**password_recovery_callback**](docs/UsersApi.md#password_recovery_callback) | **GET** /rest/user/passwordResetCallback | 
*OpenapiClient::UsersApi* | [**register_user**](docs/UsersApi.md#register_user) | **POST** /rest/user/register | Register a new account
*OpenapiClient::UsersApi* | [**save_user_profile**](docs/UsersApi.md#save_user_profile) | **POST** /rest/user/profile | Save user's profile
*OpenapiClient::UsersApi* | [**save_user_settings**](docs/UsersApi.md#save_user_settings) | **POST** /rest/user/settings | Save user settings
*OpenapiClient::UsersApi* | [**send_password_reset**](docs/UsersApi.md#send_password_reset) | **POST** /rest/user/passwordReset | send a password reset email


## Documentation for Models

 - [OpenapiClient::AddCategoryRequest](docs/AddCategoryRequest.md)
 - [OpenapiClient::AdminSaveUserRequest](docs/AdminSaveUserRequest.md)
 - [OpenapiClient::Category](docs/Category.md)
 - [OpenapiClient::CategoryModificationRequest](docs/CategoryModificationRequest.md)
 - [OpenapiClient::CollapseRequest](docs/CollapseRequest.md)
 - [OpenapiClient::Entries](docs/Entries.md)
 - [OpenapiClient::Entry](docs/Entry.md)
 - [OpenapiClient::FeedInfo](docs/FeedInfo.md)
 - [OpenapiClient::FeedInfoRequest](docs/FeedInfoRequest.md)
 - [OpenapiClient::FeedModificationRequest](docs/FeedModificationRequest.md)
 - [OpenapiClient::IDRequest](docs/IDRequest.md)
 - [OpenapiClient::MarkRequest](docs/MarkRequest.md)
 - [OpenapiClient::MultipleMarkRequest](docs/MultipleMarkRequest.md)
 - [OpenapiClient::PasswordResetRequest](docs/PasswordResetRequest.md)
 - [OpenapiClient::ProfileModificationRequest](docs/ProfileModificationRequest.md)
 - [OpenapiClient::RegistrationRequest](docs/RegistrationRequest.md)
 - [OpenapiClient::ServerInfo](docs/ServerInfo.md)
 - [OpenapiClient::Settings](docs/Settings.md)
 - [OpenapiClient::SharingSettings](docs/SharingSettings.md)
 - [OpenapiClient::StarRequest](docs/StarRequest.md)
 - [OpenapiClient::SubscribeRequest](docs/SubscribeRequest.md)
 - [OpenapiClient::Subscription](docs/Subscription.md)
 - [OpenapiClient::TagRequest](docs/TagRequest.md)
 - [OpenapiClient::UnreadCount](docs/UnreadCount.md)
 - [OpenapiClient::UserModel](docs/UserModel.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### basicAuth

- **Type**: HTTP basic authentication
