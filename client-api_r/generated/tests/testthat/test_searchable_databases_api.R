# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test SearchableDatabasesApi")

api_instance <- SearchableDatabasesApi$new()

test_that("AddDatabases", {
  # tests for AddDatabases
  # base path: http://localhost:8080
  # @param request_body array[character] 
  # @return [array[SearchableDatabase]]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CreateDatabase", {
  # tests for CreateDatabase
  # base path: http://localhost:8080
  # @param database_id character 
  # @param searchable_database_parameters SearchableDatabaseParameters  (optional)
  # @return [SearchableDatabase]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("GetCustomDatabases", {
  # tests for GetCustomDatabases
  # base path: http://localhost:8080
  # @param include_stats character  (optional)
  # @return [array[SearchableDatabase]]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("GetDatabase", {
  # tests for GetDatabase
  # base path: http://localhost:8080
  # @param database_id character 
  # @param include_stats character  (optional)
  # @return [SearchableDatabase]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("GetDatabases", {
  # tests for GetDatabases
  # base path: http://localhost:8080
  # @param include_stats character  (optional)
  # @return [array[SearchableDatabase]]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("GetIncludedDatabases", {
  # tests for GetIncludedDatabases
  # base path: http://localhost:8080
  # @param include_stats character  (optional)
  # @return [array[SearchableDatabase]]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ImportIntoDatabase", {
  # tests for ImportIntoDatabase
  # base path: http://localhost:8080
  # Start import of structure and spectra files into the specified database.
  # Start import of structure and spectra files into the specified database.
  # @param database_id character database to import into
  # @param buffer_size integer  (optional)
  # @param input_files array[data.frame]  (optional)
  # @return [SearchableDatabase]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("RemoveDatabase", {
  # tests for RemoveDatabase
  # base path: http://localhost:8080
  # @param database_id character 
  # @param delete character  (optional)
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("UpdateDatabase", {
  # tests for UpdateDatabase
  # base path: http://localhost:8080
  # @param database_id character 
  # @param searchable_database_parameters SearchableDatabaseParameters  (optional)
  # @return [SearchableDatabase]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})
