=begin
#SIRIUS Nightsky API

#REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.

The version of the OpenAPI document: v0.9 on SIRIUS 5.6.3-SNAPSHOT

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module RubySirius
  class ComputationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete job.
    # Delete job. Specify how to behave for running jobs.
    # @param project_id [String] project-space to run jobs on
    # @param job_id [String] of the job to be deleted
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :cancel_if_running If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. (default to true)
    # @option opts [Boolean] :await_deletion If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. (default to true)
    # @return [nil]
    def delete_job(project_id, job_id, opts = {})
      delete_job_with_http_info(project_id, job_id, opts)
      nil
    end

    # Delete job.
    # Delete job. Specify how to behave for running jobs.
    # @param project_id [String] project-space to run jobs on
    # @param job_id [String] of the job to be deleted
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :cancel_if_running If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. (default to true)
    # @option opts [Boolean] :await_deletion If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. (default to true)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_job_with_http_info(project_id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputationsApi.delete_job ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ComputationsApi.delete_job"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling ComputationsApi.delete_job"
      end
      # resource path
      local_var_path = '/api/projects/{projectId}/jobs/{jobId}'.sub('{' + 'projectId' + '}', CGI.escape(project_id.to_s)).sub('{' + 'jobId' + '}', CGI.escape(job_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cancelIfRunning'] = opts[:'cancel_if_running'] if !opts[:'cancel_if_running'].nil?
      query_params[:'awaitDeletion'] = opts[:'await_deletion'] if !opts[:'await_deletion'].nil?

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
        :operation => :"ComputationsApi.delete_job",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputationsApi#delete_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete job configuration with given name.
    # Delete job configuration with given name.
    # @param name [String] name of the job-config to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_job_config(name, opts = {})
      delete_job_config_with_http_info(name, opts)
      nil
    end

    # Delete job configuration with given name.
    # Delete job configuration with given name.
    # @param name [String] name of the job-config to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_job_config_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputationsApi.delete_job_config ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ComputationsApi.delete_job_config"
      end
      # resource path
      local_var_path = '/api/job-configs/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
        :operation => :"ComputationsApi.delete_job_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputationsApi#delete_job_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request default job configuration
    # Request default job configuration
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_config_map if true, generic configmap with-defaults will be included (default to false)
    # @return [JobSubmission]
    def get_default_job_config(opts = {})
      data, _status_code, _headers = get_default_job_config_with_http_info(opts)
      data
    end

    # Request default job configuration
    # Request default job configuration
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_config_map if true, generic configmap with-defaults will be included (default to false)
    # @return [Array<(JobSubmission, Integer, Hash)>] JobSubmission data, response status code and response headers
    def get_default_job_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputationsApi.get_default_job_config ...'
      end
      # resource path
      local_var_path = '/api/default-job-config'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeConfigMap'] = opts[:'include_config_map'] if !opts[:'include_config_map'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'JobSubmission'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ComputationsApi.get_default_job_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputationsApi#get_default_job_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get job information and its current state and progress (if available).
    # Get job information and its current state and progress (if available).
    # @param project_id [String] project-space to run jobs on
    # @param job_id [String] of the job to be returned
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_state include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (default to true)
    # @option opts [Boolean] :include_command include job command. (default to false)
    # @option opts [Boolean] :include_affected_compounds include list of compound ids affected by this job (if available) (default to false)
    # @return [JobId]
    def get_job(project_id, job_id, opts = {})
      data, _status_code, _headers = get_job_with_http_info(project_id, job_id, opts)
      data
    end

    # Get job information and its current state and progress (if available).
    # Get job information and its current state and progress (if available).
    # @param project_id [String] project-space to run jobs on
    # @param job_id [String] of the job to be returned
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_state include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (default to true)
    # @option opts [Boolean] :include_command include job command. (default to false)
    # @option opts [Boolean] :include_affected_compounds include list of compound ids affected by this job (if available) (default to false)
    # @return [Array<(JobId, Integer, Hash)>] JobId data, response status code and response headers
    def get_job_with_http_info(project_id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputationsApi.get_job ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ComputationsApi.get_job"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling ComputationsApi.get_job"
      end
      # resource path
      local_var_path = '/api/projects/{projectId}/jobs/{jobId}'.sub('{' + 'projectId' + '}', CGI.escape(project_id.to_s)).sub('{' + 'jobId' + '}', CGI.escape(job_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeState'] = opts[:'include_state'] if !opts[:'include_state'].nil?
      query_params[:'includeCommand'] = opts[:'include_command'] if !opts[:'include_command'].nil?
      query_params[:'includeAffectedCompounds'] = opts[:'include_affected_compounds'] if !opts[:'include_affected_compounds'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'JobId'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ComputationsApi.get_job",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputationsApi#get_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request job configuration with given name.
    # Request job configuration with given name.
    # @param name [String] name of the job-config to return
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_config_map if true the generic configmap will be part of the output (default to false)
    # @return [JobSubmission]
    def get_job_config(name, opts = {})
      data, _status_code, _headers = get_job_config_with_http_info(name, opts)
      data
    end

    # Request job configuration with given name.
    # Request job configuration with given name.
    # @param name [String] name of the job-config to return
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_config_map if true the generic configmap will be part of the output (default to false)
    # @return [Array<(JobSubmission, Integer, Hash)>] JobSubmission data, response status code and response headers
    def get_job_config_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputationsApi.get_job_config ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ComputationsApi.get_job_config"
      end
      # resource path
      local_var_path = '/api/job-configs/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeConfigMap'] = opts[:'include_config_map'] if !opts[:'include_config_map'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'JobSubmission'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ComputationsApi.get_job_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputationsApi#get_job_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request all available job configurations
    # Request all available job configurations
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_config_map if true the generic configmap will be part of the output (default to false)
    # @return [Array<JobSubmission>]
    def get_job_configs(opts = {})
      data, _status_code, _headers = get_job_configs_with_http_info(opts)
      data
    end

    # Request all available job configurations
    # Request all available job configurations
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_config_map if true the generic configmap will be part of the output (default to false)
    # @return [Array<(Array<JobSubmission>, Integer, Hash)>] Array<JobSubmission> data, response status code and response headers
    def get_job_configs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputationsApi.get_job_configs ...'
      end
      # resource path
      local_var_path = '/api/job-configs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeConfigMap'] = opts[:'include_config_map'] if !opts[:'include_config_map'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<JobSubmission>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ComputationsApi.get_job_configs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputationsApi#get_job_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get job information and its current state and progress (if available).
    # Get job information and its current state and progress (if available).
    # @param project_id [String] project-space to run jobs on
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_state include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states. (default to false)
    # @option opts [Boolean] :include_command include job commands. (default to false)
    # @option opts [Boolean] :include_affected_compounds include list of compound ids affected by this job (if available) (default to false)
    # @return [Array<JobId>]
    def get_jobs(project_id, opts = {})
      data, _status_code, _headers = get_jobs_with_http_info(project_id, opts)
      data
    end

    # Get job information and its current state and progress (if available).
    # Get job information and its current state and progress (if available).
    # @param project_id [String] project-space to run jobs on
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_state include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states. (default to false)
    # @option opts [Boolean] :include_command include job commands. (default to false)
    # @option opts [Boolean] :include_affected_compounds include list of compound ids affected by this job (if available) (default to false)
    # @return [Array<(Array<JobId>, Integer, Hash)>] Array<JobId> data, response status code and response headers
    def get_jobs_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputationsApi.get_jobs ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ComputationsApi.get_jobs"
      end
      # resource path
      local_var_path = '/api/projects/{projectId}/jobs'.sub('{' + 'projectId' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeState'] = opts[:'include_state'] if !opts[:'include_state'].nil?
      query_params[:'includeCommand'] = opts[:'include_command'] if !opts[:'include_command'].nil?
      query_params[:'includeAffectedCompounds'] = opts[:'include_affected_compounds'] if !opts[:'include_affected_compounds'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<JobId>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ComputationsApi.get_jobs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputationsApi#get_jobs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add new job configuration with given name.
    # Add new job configuration with given name.
    # @param name [String] name of the job-config to add
    # @param job_submission [JobSubmission] to add
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :override_existing  (default to false)
    # @return [String]
    def post_job_config(name, job_submission, opts = {})
      data, _status_code, _headers = post_job_config_with_http_info(name, job_submission, opts)
      data
    end

    # Add new job configuration with given name.
    # Add new job configuration with given name.
    # @param name [String] name of the job-config to add
    # @param job_submission [JobSubmission] to add
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :override_existing  (default to false)
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def post_job_config_with_http_info(name, job_submission, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputationsApi.post_job_config ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ComputationsApi.post_job_config"
      end
      # verify the required parameter 'job_submission' is set
      if @api_client.config.client_side_validation && job_submission.nil?
        fail ArgumentError, "Missing the required parameter 'job_submission' when calling ComputationsApi.post_job_config"
      end
      # resource path
      local_var_path = '/api/job-configs/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'overrideExisting'] = opts[:'override_existing'] if !opts[:'override_existing'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(job_submission)

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ComputationsApi.post_job_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputationsApi#post_job_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start computation for given compounds and with given parameters.
    # Start computation for given compounds and with given parameters.
    # @param project_id [String] project-space to run jobs on
    # @param job_submission [JobSubmission] configuration of the job that will be submitted of the job to be returned
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_state include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (default to true)
    # @option opts [Boolean] :include_command include job command. (default to true)
    # @option opts [Boolean] :include_affected_compounds include list of compound ids affected by this job (if available) (default to false)
    # @return [JobId]
    def start_job(project_id, job_submission, opts = {})
      data, _status_code, _headers = start_job_with_http_info(project_id, job_submission, opts)
      data
    end

    # Start computation for given compounds and with given parameters.
    # Start computation for given compounds and with given parameters.
    # @param project_id [String] project-space to run jobs on
    # @param job_submission [JobSubmission] configuration of the job that will be submitted of the job to be returned
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_state include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (default to true)
    # @option opts [Boolean] :include_command include job command. (default to true)
    # @option opts [Boolean] :include_affected_compounds include list of compound ids affected by this job (if available) (default to false)
    # @return [Array<(JobId, Integer, Hash)>] JobId data, response status code and response headers
    def start_job_with_http_info(project_id, job_submission, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputationsApi.start_job ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ComputationsApi.start_job"
      end
      # verify the required parameter 'job_submission' is set
      if @api_client.config.client_side_validation && job_submission.nil?
        fail ArgumentError, "Missing the required parameter 'job_submission' when calling ComputationsApi.start_job"
      end
      # resource path
      local_var_path = '/api/projects/{projectId}/jobs'.sub('{' + 'projectId' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeState'] = opts[:'include_state'] if !opts[:'include_state'].nil?
      query_params[:'includeCommand'] = opts[:'include_command'] if !opts[:'include_command'].nil?
      query_params[:'includeAffectedCompounds'] = opts[:'include_affected_compounds'] if !opts[:'include_affected_compounds'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(job_submission)

      # return_type
      return_type = opts[:debug_return_type] || 'JobId'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ComputationsApi.start_job",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputationsApi#start_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start computation for given compounds and with parameters from a stored job-config.
    # Start computation for given compounds and with parameters from a stored job-config.
    # @param project_id [String] project-space to run jobs on
    # @param job_config_name [String] name if the config to be used
    # @param request_body [Array<String>] compound ids to be computed
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :recompute enable or disable recompute. If null the stored value will be used.
    # @option opts [Boolean] :include_state include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (default to true)
    # @option opts [Boolean] :include_command include job command. (default to true)
    # @option opts [Boolean] :include_affected_compounds include list of compound ids affected by this job (if available) (default to false)
    # @return [JobId]
    def start_job_from_config(project_id, job_config_name, request_body, opts = {})
      data, _status_code, _headers = start_job_from_config_with_http_info(project_id, job_config_name, request_body, opts)
      data
    end

    # Start computation for given compounds and with parameters from a stored job-config.
    # Start computation for given compounds and with parameters from a stored job-config.
    # @param project_id [String] project-space to run jobs on
    # @param job_config_name [String] name if the config to be used
    # @param request_body [Array<String>] compound ids to be computed
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :recompute enable or disable recompute. If null the stored value will be used.
    # @option opts [Boolean] :include_state include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (default to true)
    # @option opts [Boolean] :include_command include job command. (default to true)
    # @option opts [Boolean] :include_affected_compounds include list of compound ids affected by this job (if available) (default to false)
    # @return [Array<(JobId, Integer, Hash)>] JobId data, response status code and response headers
    def start_job_from_config_with_http_info(project_id, job_config_name, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputationsApi.start_job_from_config ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ComputationsApi.start_job_from_config"
      end
      # verify the required parameter 'job_config_name' is set
      if @api_client.config.client_side_validation && job_config_name.nil?
        fail ArgumentError, "Missing the required parameter 'job_config_name' when calling ComputationsApi.start_job_from_config"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling ComputationsApi.start_job_from_config"
      end
      # resource path
      local_var_path = '/api/projects/{projectId}/jobs-from-config'.sub('{' + 'projectId' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'jobConfigName'] = job_config_name
      query_params[:'recompute'] = opts[:'recompute'] if !opts[:'recompute'].nil?
      query_params[:'includeState'] = opts[:'include_state'] if !opts[:'include_state'].nil?
      query_params[:'includeCommand'] = opts[:'include_command'] if !opts[:'include_command'].nil?
      query_params[:'includeAffectedCompounds'] = opts[:'include_affected_compounds'] if !opts[:'include_affected_compounds'].nil?

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
        :operation => :"ComputationsApi.start_job_from_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputationsApi#start_job_from_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
