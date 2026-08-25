# Client side unit tests - no running SIRIUS instance required.

context("Test ApiClient")

api_client <- ApiClient$new()

test_that("the Accept header never prefers the error media type", {
  # SIRIUS documents its RFC 7807 error body on every operation. The stock "first JSON-ish media
  # type wins" rule then asks the CSV and text/plain endpoints for application/problem+json and the
  # server answers 406. Regression test for that.
  expect_equal(api_client$select_header(
    list("application/csv", "application/CSV", "application/problem+json")), "application/csv")
  expect_equal(api_client$select_header(
    list("text/plain;charset=UTF-8", "application/problem+json")), "text/plain;charset=UTF-8")
})

test_that("the Accept header still prefers JSON when it is offered", {
  expect_equal(api_client$select_header(
    list("application/json", "application/problem+json")), "application/json")
  expect_equal(api_client$select_header(list("text/plain", "application/json")), "application/json")
})

test_that("the error media type is used when the operation offers nothing else", {
  expect_equal(api_client$select_header(list("application/problem+json")),
               "application/problem+json")
  expect_null(api_client$select_header(list()))
})
