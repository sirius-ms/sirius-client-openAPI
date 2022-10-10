=begin
#SIRIUS Nightsky API

#REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.

OpenAPI spec version: v0.9 on SIRIUS 5.6.0-SNAPSHOT

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.35
=end

require 'spec_helper'
require 'json'

# Unit tests for RubySirius::ComputationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ComputationsApi' do
  before do
    # run before each test
    @instance = RubySirius::ComputationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ComputationsApi' do
    it 'should create an instance of ComputationsApi' do
      expect(@instance).to be_instance_of(RubySirius::ComputationsApi)
    end
  end

  # unit tests for delete_job
  # Delete job.
  # Delete job. Specify how to behave for running jobs.
  # @param project_id project-space to run jobs on
  # @param job_id of the job to be deleted
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :cancel_if_running If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished.
  # @option opts [BOOLEAN] :await_deletion If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished.
  # @return [nil]
  describe 'delete_job test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_job_config
  # Delete job configuration with given name.
  # Delete job configuration with given name.
  # @param name name of the job-config to delete
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_job_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_default_job_config
  # Request default job configuration
  # Request default job configuration
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_config_map if true, generic configmap with-defaults will be included
  # @return [JobSubmission]
  describe 'get_default_job_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_job
  # Get job information and its current state and progress (if available).
  # Get job information and its current state and progress (if available).
  # @param project_id project-space to run jobs on
  # @param job_id of the job to be returned
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_state include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state.
  # @option opts [BOOLEAN] :include_command include job command.
  # @option opts [BOOLEAN] :include_affected_compounds include list of compound ids affected by this job (if available)
  # @return [JobId]
  describe 'get_job test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_job_config
  # Request job configuration with given name.
  # Request job configuration with given name.
  # @param name name of the job-config to return
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_config_map if true the generic configmap will be part of the output
  # @return [JobSubmission]
  describe 'get_job_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_job_configs
  # Request all available job configurations
  # Request all available job configurations
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_config_map if true the generic configmap will be part of the output
  # @return [Array<JobSubmission>]
  describe 'get_job_configs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_jobs
  # Get job information and its current state and progress (if available).
  # Get job information and its current state and progress (if available).
  # @param project_id project-space to run jobs on
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_state include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states.
  # @option opts [BOOLEAN] :include_command include job commands.
  # @option opts [BOOLEAN] :include_affected_compounds include list of compound ids affected by this job (if available)
  # @return [Array<JobId>]
  describe 'get_jobs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_job_config
  # Add new job configuration with given name.
  # Add new job configuration with given name.
  # @param body to add
  # @param name name of the job-config to add
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :override_existing 
  # @return [String]
  describe 'post_job_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start_job
  # Start computation for given compounds and with given parameters.
  # Start computation for given compounds and with given parameters.
  # @param body configuration of the job that will be submitted of the job to be returned
  # @param project_id project-space to run jobs on
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_state include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state.
  # @option opts [BOOLEAN] :include_command include job command.
  # @option opts [BOOLEAN] :include_affected_compounds include list of compound ids affected by this job (if available)
  # @return [JobId]
  describe 'start_job test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start_job_from_config
  # Start computation for given compounds and with parameters from a stored job-config.
  # Start computation for given compounds and with parameters from a stored job-config.
  # @param body compound ids to be computed
  # @param job_config_name name if the config to be used
  # @param project_id project-space to run jobs on
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :recompute enable or disable recompute. If null the stored value will be used.
  # @option opts [BOOLEAN] :include_state include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state.
  # @option opts [BOOLEAN] :include_command include job command.
  # @option opts [BOOLEAN] :include_affected_compounds include list of compound ids affected by this job (if available)
  # @return [JobId]
  describe 'start_job_from_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
