# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test ActuatorApi")

api_instance <- ActuatorApi$new()

test_that("Health", {
  # tests for Health
  # base path: http://localhost:8080
  # Actuator web endpoint &#39;health&#39;
  # @return [object]
  result <- api_instance$Health()
  expect_equal(result$status, "UP")
})

test_that("Shutdown", {
  # tests for Shutdown
  # base path: http://localhost:8080
  # Actuator web endpoint &#39;shutdown&#39;
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})
