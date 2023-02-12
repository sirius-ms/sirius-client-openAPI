=begin
#SIRIUS Nightsky API

#REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.

The version of the OpenAPI document: v0.9 on SIRIUS 5.6.3-SNAPSHOT

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module RubySirius
  class CompoundsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete compound/feature with the given identifier from the specified project-space.
    # Delete compound/feature with the given identifier from the specified project-space.
    # @param project_id [String] project-space to delete from.
    # @param cid [String] identifier of compound to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_compound(project_id, cid, opts = {})
      delete_compound_with_http_info(project_id, cid, opts)
      nil
    end

    # Delete compound/feature with the given identifier from the specified project-space.
    # Delete compound/feature with the given identifier from the specified project-space.
    # @param project_id [String] project-space to delete from.
    # @param cid [String] identifier of compound to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_compound_with_http_info(project_id, cid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompoundsApi.delete_compound ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CompoundsApi.delete_compound"
      end
      # verify the required parameter 'cid' is set
      if @api_client.config.client_side_validation && cid.nil?
        fail ArgumentError, "Missing the required parameter 'cid' when calling CompoundsApi.delete_compound"
      end
      # resource path
      local_var_path = '/api/projects/{projectId}/compounds/{cid}'.sub('{' + 'projectId' + '}', CGI.escape(project_id.to_s)).sub('{' + 'cid' + '}', CGI.escape(cid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CompoundsApi.delete_compound",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompoundsApi#delete_compound\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get compound/feature with the given identifier from the specified project-space.
    # Get compound/feature with the given identifier from the specified project-space.
    # @param project_id [String] project-space to read from.
    # @param cid [String] identifier of compound to access.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :top_annotation include the top annotation of this feature into the output (if available). (default to false)
    # @option opts [Boolean] :ms_data include corresponding source data (MS and MS/MS) into the output. (default to false)
    # @return [CompoundId]
    def get_compound(project_id, cid, opts = {})
      data, _status_code, _headers = get_compound_with_http_info(project_id, cid, opts)
      data
    end

    # Get compound/feature with the given identifier from the specified project-space.
    # Get compound/feature with the given identifier from the specified project-space.
    # @param project_id [String] project-space to read from.
    # @param cid [String] identifier of compound to access.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :top_annotation include the top annotation of this feature into the output (if available). (default to false)
    # @option opts [Boolean] :ms_data include corresponding source data (MS and MS/MS) into the output. (default to false)
    # @return [Array<(CompoundId, Integer, Hash)>] CompoundId data, response status code and response headers
    def get_compound_with_http_info(project_id, cid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompoundsApi.get_compound ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CompoundsApi.get_compound"
      end
      # verify the required parameter 'cid' is set
      if @api_client.config.client_side_validation && cid.nil?
        fail ArgumentError, "Missing the required parameter 'cid' when calling CompoundsApi.get_compound"
      end
      # resource path
      local_var_path = '/api/projects/{projectId}/compounds/{cid}'.sub('{' + 'projectId' + '}', CGI.escape(project_id.to_s)).sub('{' + 'cid' + '}', CGI.escape(cid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'topAnnotation'] = opts[:'top_annotation'] if !opts[:'top_annotation'].nil?
      query_params[:'msData'] = opts[:'ms_data'] if !opts[:'ms_data'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompoundId'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CompoundsApi.get_compound",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompoundsApi#get_compound\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all available compounds/features in the given project-space.
    # Get all available compounds/features in the given project-space.
    # @param project_id [String] project-space to read from.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :top_annotation include the top annotation of this feature into the output (if available). (default to false)
    # @option opts [Boolean] :ms_data include corresponding source data (MS and MS/MS) into the output. (default to false)
    # @return [Array<CompoundId>]
    def get_compounds(project_id, opts = {})
      data, _status_code, _headers = get_compounds_with_http_info(project_id, opts)
      data
    end

    # Get all available compounds/features in the given project-space.
    # Get all available compounds/features in the given project-space.
    # @param project_id [String] project-space to read from.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :top_annotation include the top annotation of this feature into the output (if available). (default to false)
    # @option opts [Boolean] :ms_data include corresponding source data (MS and MS/MS) into the output. (default to false)
    # @return [Array<(Array<CompoundId>, Integer, Hash)>] Array<CompoundId> data, response status code and response headers
    def get_compounds_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompoundsApi.get_compounds ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CompoundsApi.get_compounds"
      end
      # resource path
      local_var_path = '/api/projects/{projectId}/compounds'.sub('{' + 'projectId' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'topAnnotation'] = opts[:'top_annotation'] if !opts[:'top_annotation'].nil?
      query_params[:'msData'] = opts[:'ms_data'] if !opts[:'ms_data'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<CompoundId>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CompoundsApi.get_compounds",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompoundsApi#get_compounds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import ms/ms data in given format from local filesystem into the specified project-space
    # Import ms/ms data in given format from local filesystem into the specified project-space.  The import will run in a background job  Possible formats (ms, mgf, cef, msp, mzML, mzXML, project-space)  <p>
    # @param project_id [String] project-space to import into.
    # @param request_body [Array<String>] List of file and directory paths to import
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :align_lcms_runs If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding (default to false)
    # @option opts [Boolean] :allow_ms1_only_data  (default to true)
    # @option opts [Boolean] :ignore_formulas  (default to false)
    # @return [JobId]
    def import_compounds(project_id, request_body, opts = {})
      data, _status_code, _headers = import_compounds_with_http_info(project_id, request_body, opts)
      data
    end

    # Import ms/ms data in given format from local filesystem into the specified project-space
    # Import ms/ms data in given format from local filesystem into the specified project-space.  The import will run in a background job  Possible formats (ms, mgf, cef, msp, mzML, mzXML, project-space)  &lt;p&gt;
    # @param project_id [String] project-space to import into.
    # @param request_body [Array<String>] List of file and directory paths to import
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :align_lcms_runs If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding (default to false)
    # @option opts [Boolean] :allow_ms1_only_data  (default to true)
    # @option opts [Boolean] :ignore_formulas  (default to false)
    # @return [Array<(JobId, Integer, Hash)>] JobId data, response status code and response headers
    def import_compounds_with_http_info(project_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompoundsApi.import_compounds ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CompoundsApi.import_compounds"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling CompoundsApi.import_compounds"
      end
      # resource path
      local_var_path = '/api/projects/{projectId}/compounds'.sub('{' + 'projectId' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'alignLCMSRuns'] = opts[:'align_lcms_runs'] if !opts[:'align_lcms_runs'].nil?
      query_params[:'allowMs1OnlyData'] = opts[:'allow_ms1_only_data'] if !opts[:'allow_ms1_only_data'].nil?
      query_params[:'ignoreFormulas'] = opts[:'ignore_formulas'] if !opts[:'ignore_formulas'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'JobId'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CompoundsApi.import_compounds",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompoundsApi#import_compounds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
    # Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
    # @param project_id [String] project-space to import into.
    # @param format [String] data format specified by the usual file extension of the format (without [.])
    # @param body [String] data content in specified format
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source_name name that specifies the data source. Can e.g. be a file path or just a name.
    # @return [Array<CompoundId>]
    def import_compounds_from_string(project_id, format, body, opts = {})
      data, _status_code, _headers = import_compounds_from_string_with_http_info(project_id, format, body, opts)
      data
    end

    # Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
    # Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
    # @param project_id [String] project-space to import into.
    # @param format [String] data format specified by the usual file extension of the format (without [.])
    # @param body [String] data content in specified format
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source_name name that specifies the data source. Can e.g. be a file path or just a name.
    # @return [Array<(Array<CompoundId>, Integer, Hash)>] Array<CompoundId> data, response status code and response headers
    def import_compounds_from_string_with_http_info(project_id, format, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompoundsApi.import_compounds_from_string ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CompoundsApi.import_compounds_from_string"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling CompoundsApi.import_compounds_from_string"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CompoundsApi.import_compounds_from_string"
      end
      # resource path
      local_var_path = '/api/projects/{projectId}/compounds/import-from-string'.sub('{' + 'projectId' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'format'] = format
      query_params[:'sourceName'] = opts[:'source_name'] if !opts[:'source_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['text/plain'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<CompoundId>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CompoundsApi.import_compounds_from_string",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompoundsApi#import_compounds_from_string\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
