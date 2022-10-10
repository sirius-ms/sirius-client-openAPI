=begin
#SIRIUS Nightsky API

#REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.

OpenAPI spec version: v0.9 on SIRIUS 5.6.0-SNAPSHOT

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.35
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for RubySirius::DBLink
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DBLink' do
  before do
    # run before each test
    @instance = RubySirius::DBLink.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DBLink' do
    it 'should create an instance of DBLink' do
      expect(@instance).to be_instance_of(RubySirius::DBLink)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
