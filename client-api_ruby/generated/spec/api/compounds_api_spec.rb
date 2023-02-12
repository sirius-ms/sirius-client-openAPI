=begin
#SIRIUS Nightsky API

#REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.

OpenAPI spec version: v0.9 on SIRIUS 5.6.0-SNAPSHOT

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.35
=end

require 'spec_helper'
require 'json'

# Unit tests for RubySirius::CompoundsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CompoundsApi' do
  before do
    # run before each test
    @instance = RubySirius::CompoundsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CompoundsApi' do
    it 'should create an instance of CompoundsApi' do
      expect(@instance).to be_instance_of(RubySirius::CompoundsApi)
    end
  end

  # unit tests for delete_compound
  # Delete compound/feature with the given identifier from the specified project-space.
  # Delete compound/feature with the given identifier from the specified project-space.
  # @param project_id project-space to delete from.
  # @param cid identifier of compound to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_compound test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_compound
  # Get compound/feature with the given identifier from the specified project-space.
  # Get compound/feature with the given identifier from the specified project-space.
  # @param project_id project-space to read from.
  # @param cid identifier of compound to access.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :top_annotation include the top annotation of this feature into the output (if available).
  # @option opts [BOOLEAN] :ms_data include corresponding source data (MS and MS/MS) into the output.
  # @return [CompoundId]
  describe 'get_compound test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_compounds
  # Get all available compounds/features in the given project-space.
  # Get all available compounds/features in the given project-space.
  # @param project_id project-space to read from.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :top_annotation include the top annotation of this feature into the output (if available).
  # @option opts [BOOLEAN] :ms_data include corresponding source data (MS and MS/MS) into the output.
  # @return [Array<CompoundId>]
  describe 'get_compounds test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for import_compounds
  # Import ms/ms data in given format from local filesystem into the specified project-space
  # Import ms/ms data in given format from local filesystem into the specified project-space.  The import will run in a background job  Possible formats (ms, mgf, cef, msp, mzML, mzXML, project-space)  &lt;p&gt;
  # @param body List of file and directory paths to import
  # @param project_id project-space to import into.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :align_lcms_runs If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding
  # @option opts [BOOLEAN] :allow_ms1_only_data 
  # @option opts [BOOLEAN] :ignore_formulas 
  # @return [JobId]
  describe 'import_compounds test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for import_compounds_from_string
  # Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
  # Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
  # @param body data content in specified format
  # @param format data format specified by the usual file extension of the format (without [.])
  # @param project_id project-space to import into.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source_name name that specifies the data source. Can e.g. be a file path or just a name.
  # @return [Array<CompoundId>]
  describe 'import_compounds_from_string test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
