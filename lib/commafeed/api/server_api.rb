=begin
#CommaFeed API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module OpenapiClient
  class ServerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # proxy image
    # @param u [String] image url
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_proxied_image(u, opts = {})
      get_proxied_image_with_http_info(u, opts)
      nil
    end

    # proxy image
    # @param u [String] image url
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_proxied_image_with_http_info(u, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.get_proxied_image ...'
      end
      # verify the required parameter 'u' is set
      if @api_client.config.client_side_validation && u.nil?
        fail ArgumentError, "Missing the required parameter 'u' when calling ServerApi.get_proxied_image"
      end
      # resource path
      local_var_path = '/rest/server/proxy'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'u'] = u

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/png']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ServerApi.get_proxied_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#get_proxied_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get server infos
    # Get server infos
    # @param [Hash] opts the optional parameters
    # @return [ServerInfo]
    def get_server_infos(opts = {})
      data, _status_code, _headers = get_server_infos_with_http_info(opts)
      data
    end

    # Get server infos
    # Get server infos
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServerInfo, Integer, Hash)>] ServerInfo data, response status code and response headers
    def get_server_infos_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.get_server_infos ...'
      end
      # resource path
      local_var_path = '/rest/server/get'

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
      return_type = opts[:debug_return_type] || 'ServerInfo'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ServerApi.get_server_infos",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#get_server_infos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end