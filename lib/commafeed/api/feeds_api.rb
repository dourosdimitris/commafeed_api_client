=begin
#CommaFeed API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module CommafeedClient
  class FeedsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # OPML export
    # Export an OPML file of the user's subscriptions
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def export_opml(opts = {})
      export_opml_with_http_info(opts)
      nil
    end

    # OPML export
    # Export an OPML file of the user&#39;s subscriptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def export_opml_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.export_opml ...'
      end
      # resource path
      local_var_path = '/rest/feed/export'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.export_opml",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#export_opml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch a feed
    # Fetch a feed by its url
    # @param feed_info_request [FeedInfoRequest] feed url
    # @param [Hash] opts the optional parameters
    # @return [FeedInfo]
    def fetch_feed(feed_info_request, opts = {})
      data, _status_code, _headers = fetch_feed_with_http_info(feed_info_request, opts)
      data
    end

    # Fetch a feed
    # Fetch a feed by its url
    # @param feed_info_request [FeedInfoRequest] feed url
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeedInfo, Integer, Hash)>] FeedInfo data, response status code and response headers
    def fetch_feed_with_http_info(feed_info_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.fetch_feed ...'
      end
      # verify the required parameter 'feed_info_request' is set
      if @api_client.config.client_side_validation && feed_info_request.nil?
        fail ArgumentError, "Missing the required parameter 'feed_info_request' when calling FeedsApi.fetch_feed"
      end
      # resource path
      local_var_path = '/rest/feed/fetch'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(feed_info_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FeedInfo'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.fetch_feed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#fetch_feed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get feed
    # @param id [Integer] user id
    # @param [Hash] opts the optional parameters
    # @return [Subscription]
    def get_feed(id, opts = {})
      data, _status_code, _headers = get_feed_with_http_info(id, opts)
      data
    end

    # get feed
    # @param id [Integer] user id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Subscription, Integer, Hash)>] Subscription data, response status code and response headers
    def get_feed_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.get_feed ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FeedsApi.get_feed"
      end
      # resource path
      local_var_path = '/rest/feed/get/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Subscription'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.get_feed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#get_feed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get feed entries
    # Get a list of feed entries
    # @param id [String] id of the feed
    # @param read_type [String] all entries or only unread ones
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :newer_than only entries newer than this
    # @option opts [Integer] :offset offset for paging (default to 0)
    # @option opts [Integer] :limit limit for paging, default 20, maximum 1000 (default to 20)
    # @option opts [String] :order ordering (default to 'desc')
    # @option opts [String] :keywords search for keywords in either the title or the content of the entries, separated by spaces, 3 characters minimum
    # @return [Entries]
    def get_feed_entries(id, read_type, opts = {})
      data, _status_code, _headers = get_feed_entries_with_http_info(id, read_type, opts)
      data
    end

    # Get feed entries
    # Get a list of feed entries
    # @param id [String] id of the feed
    # @param read_type [String] all entries or only unread ones
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :newer_than only entries newer than this
    # @option opts [Integer] :offset offset for paging (default to 0)
    # @option opts [Integer] :limit limit for paging, default 20, maximum 1000 (default to 20)
    # @option opts [String] :order ordering (default to 'desc')
    # @option opts [String] :keywords search for keywords in either the title or the content of the entries, separated by spaces, 3 characters minimum
    # @return [Array<(Entries, Integer, Hash)>] Entries data, response status code and response headers
    def get_feed_entries_with_http_info(id, read_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.get_feed_entries ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FeedsApi.get_feed_entries"
      end
      # verify the required parameter 'read_type' is set
      if @api_client.config.client_side_validation && read_type.nil?
        fail ArgumentError, "Missing the required parameter 'read_type' when calling FeedsApi.get_feed_entries"
      end
      # verify enum value
      allowable_values = ["all", "unread"]
      if @api_client.config.client_side_validation && !allowable_values.include?(read_type)
        fail ArgumentError, "invalid value for \"read_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'order'] && !allowable_values.include?(opts[:'order'])
        fail ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/rest/feed/entries'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id
      query_params[:'readType'] = read_type
      query_params[:'newerThan'] = opts[:'newer_than'] if !opts[:'newer_than'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'keywords'] = opts[:'keywords'] if !opts[:'keywords'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Entries'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.get_feed_entries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#get_feed_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get feed entries as a feed
    # Get a feed of feed entries
    # @param id [String] id of the feed
    # @param read_type [String] all entries or only unread ones
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :newer_than only entries newer than this
    # @option opts [Integer] :offset offset for paging (default to 0)
    # @option opts [Integer] :limit limit for paging, default 20, maximum 1000 (default to 20)
    # @option opts [String] :order date ordering (default to 'desc')
    # @option opts [String] :keywords search for keywords in either the title or the content of the entries, separated by spaces, 3 characters minimum
    # @return [nil]
    def get_feed_entries_as_feed(id, read_type, opts = {})
      get_feed_entries_as_feed_with_http_info(id, read_type, opts)
      nil
    end

    # Get feed entries as a feed
    # Get a feed of feed entries
    # @param id [String] id of the feed
    # @param read_type [String] all entries or only unread ones
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :newer_than only entries newer than this
    # @option opts [Integer] :offset offset for paging (default to 0)
    # @option opts [Integer] :limit limit for paging, default 20, maximum 1000 (default to 20)
    # @option opts [String] :order date ordering (default to 'desc')
    # @option opts [String] :keywords search for keywords in either the title or the content of the entries, separated by spaces, 3 characters minimum
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_feed_entries_as_feed_with_http_info(id, read_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.get_feed_entries_as_feed ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FeedsApi.get_feed_entries_as_feed"
      end
      # verify the required parameter 'read_type' is set
      if @api_client.config.client_side_validation && read_type.nil?
        fail ArgumentError, "Missing the required parameter 'read_type' when calling FeedsApi.get_feed_entries_as_feed"
      end
      # verify enum value
      allowable_values = ["all", "unread"]
      if @api_client.config.client_side_validation && !allowable_values.include?(read_type)
        fail ArgumentError, "invalid value for \"read_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'order'] && !allowable_values.include?(opts[:'order'])
        fail ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/rest/feed/entriesAsFeed'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id
      query_params[:'readType'] = read_type
      query_params[:'newerThan'] = opts[:'newer_than'] if !opts[:'newer_than'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'keywords'] = opts[:'keywords'] if !opts[:'keywords'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.get_feed_entries_as_feed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#get_feed_entries_as_feed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch a feed's icon
    # Fetch a feed's icon
    # @param id [Integer] subscription id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_feed_favicon(id, opts = {})
      get_feed_favicon_with_http_info(id, opts)
      nil
    end

    # Fetch a feed&#39;s icon
    # Fetch a feed&#39;s icon
    # @param id [Integer] subscription id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_feed_favicon_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.get_feed_favicon ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FeedsApi.get_feed_favicon"
      end
      # resource path
      local_var_path = '/rest/feed/favicon/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.get_feed_favicon",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#get_feed_favicon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # OPML import
    # Import an OPML file, posted as a FORM with the 'file' name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def import_opml(opts = {})
      import_opml_with_http_info(opts)
      nil
    end

    # OPML import
    # Import an OPML file, posted as a FORM with the &#39;file&#39; name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def import_opml_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.import_opml ...'
      end
      # resource path
      local_var_path = '/rest/feed/import'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.import_opml",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#import_opml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark feed entries
    # Mark feed entries as read (unread is not supported)
    # @param mark_request [MarkRequest] Mark request
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def mark_feed_entries(mark_request, opts = {})
      mark_feed_entries_with_http_info(mark_request, opts)
      nil
    end

    # Mark feed entries
    # Mark feed entries as read (unread is not supported)
    # @param mark_request [MarkRequest] Mark request
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def mark_feed_entries_with_http_info(mark_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.mark_feed_entries ...'
      end
      # verify the required parameter 'mark_request' is set
      if @api_client.config.client_side_validation && mark_request.nil?
        fail ArgumentError, "Missing the required parameter 'mark_request' when calling FeedsApi.mark_feed_entries"
      end
      # resource path
      local_var_path = '/rest/feed/mark'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(mark_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.mark_feed_entries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#mark_feed_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify a subscription
    # Modify a feed subscription
    # @param feed_modification_request [FeedModificationRequest] subscription id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def modify_feed(feed_modification_request, opts = {})
      modify_feed_with_http_info(feed_modification_request, opts)
      nil
    end

    # Modify a subscription
    # Modify a feed subscription
    # @param feed_modification_request [FeedModificationRequest] subscription id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def modify_feed_with_http_info(feed_modification_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.modify_feed ...'
      end
      # verify the required parameter 'feed_modification_request' is set
      if @api_client.config.client_side_validation && feed_modification_request.nil?
        fail ArgumentError, "Missing the required parameter 'feed_modification_request' when calling FeedsApi.modify_feed"
      end
      # resource path
      local_var_path = '/rest/feed/modify'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(feed_modification_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.modify_feed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#modify_feed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Queue all feeds of the user for refresh
    # Manually add all feeds of the user to the refresh queue
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def queue_all_for_refresh(opts = {})
      queue_all_for_refresh_with_http_info(opts)
      nil
    end

    # Queue all feeds of the user for refresh
    # Manually add all feeds of the user to the refresh queue
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def queue_all_for_refresh_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.queue_all_for_refresh ...'
      end
      # resource path
      local_var_path = '/rest/feed/refreshAll'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.queue_all_for_refresh",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#queue_all_for_refresh\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Queue a feed for refresh
    # Manually add a feed to the refresh queue
    # @param id_request [IDRequest] Feed id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def queue_for_refresh(id_request, opts = {})
      queue_for_refresh_with_http_info(id_request, opts)
      nil
    end

    # Queue a feed for refresh
    # Manually add a feed to the refresh queue
    # @param id_request [IDRequest] Feed id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def queue_for_refresh_with_http_info(id_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.queue_for_refresh ...'
      end
      # verify the required parameter 'id_request' is set
      if @api_client.config.client_side_validation && id_request.nil?
        fail ArgumentError, "Missing the required parameter 'id_request' when calling FeedsApi.queue_for_refresh"
      end
      # resource path
      local_var_path = '/rest/feed/refresh'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(id_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.queue_for_refresh",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#queue_for_refresh\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Subscribe to a feed
    # Subscribe to a feed
    # @param subscribe_request [SubscribeRequest] subscription request
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def subscribe(subscribe_request, opts = {})
      data, _status_code, _headers = subscribe_with_http_info(subscribe_request, opts)
      data
    end

    # Subscribe to a feed
    # Subscribe to a feed
    # @param subscribe_request [SubscribeRequest] subscription request
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def subscribe_with_http_info(subscribe_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.subscribe ...'
      end
      # verify the required parameter 'subscribe_request' is set
      if @api_client.config.client_side_validation && subscribe_request.nil?
        fail ArgumentError, "Missing the required parameter 'subscribe_request' when calling FeedsApi.subscribe"
      end
      # resource path
      local_var_path = '/rest/feed/subscribe'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscribe_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.subscribe",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#subscribe\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Subscribe to a feed
    # Subscribe to a feed
    # @param url [String] feed url
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def subscribe_from_url(url, opts = {})
      subscribe_from_url_with_http_info(url, opts)
      nil
    end

    # Subscribe to a feed
    # Subscribe to a feed
    # @param url [String] feed url
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def subscribe_from_url_with_http_info(url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.subscribe_from_url ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling FeedsApi.subscribe_from_url"
      end
      # resource path
      local_var_path = '/rest/feed/subscribe'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'url'] = url

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.subscribe_from_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#subscribe_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unsubscribe from a feed
    # Unsubscribe from a feed
    # @param id_request [IDRequest] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unsubscribe(id_request, opts = {})
      unsubscribe_with_http_info(id_request, opts)
      nil
    end

    # Unsubscribe from a feed
    # Unsubscribe from a feed
    # @param id_request [IDRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def unsubscribe_with_http_info(id_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedsApi.unsubscribe ...'
      end
      # verify the required parameter 'id_request' is set
      if @api_client.config.client_side_validation && id_request.nil?
        fail ArgumentError, "Missing the required parameter 'id_request' when calling FeedsApi.unsubscribe"
      end
      # resource path
      local_var_path = '/rest/feed/unsubscribe'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(id_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FeedsApi.unsubscribe",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedsApi#unsubscribe\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
