# Regression tests for the hand maintained parts of the generated R client.
#
# These are pure unit tests: they need neither a running SIRIUS nor a login. Responses are either
# deserialised from a literal JSON string or mocked with httr2, so they run in any environment.

context("Serialization and error handling")

pkg <- loadNamespace("RSirius")

test_that("nested model arrays are deserialised", {
  # jsonlite simplifies an array of objects into a data.frame by default, and the generated
  # deserializer only walks data.frame shaped input. That combination silently turned every nested
  # model array into NULL, which is how dbLinks went missing (issue #186).
  json <- paste0(
    '[{"inchiKey":"XYNPYHXGMWJBLV","structureName":"Tomatidin","rank":1,',
    '"dbLinks":[{"name":"PUBCHEM","id":"154586107"},{"name":"PUBCHEM","id":"42628987"}]},',
    '{"inchiKey":"AAAAAAAAAAAAAA","structureName":"Second","rank":2,',
    '"dbLinks":[{"name":"CHEBI","id":"1234"}]}]')

  candidates <- ApiClient$new()$deserialize(json, "array[StructureCandidateFormula]", pkg)

  expect_length(candidates, 2)
  expect_true(inherits(candidates[[1]], "StructureCandidateFormula"))
  expect_equal(candidates[[1]]$structureName, "Tomatidin")

  expect_false(is.null(candidates[[1]]$dbLinks))
  expect_length(candidates[[1]]$dbLinks, 2)
  expect_true(inherits(candidates[[1]]$dbLinks[[1]], "DBLink"))
  expect_equal(candidates[[1]]$dbLinks[[1]]$name, "PUBCHEM")
  expect_equal(candidates[[1]]$dbLinks[[1]]$id, "154586107")

  expect_length(candidates[[2]]$dbLinks, 1)
  expect_equal(candidates[[2]]$dbLinks[[1]]$name, "CHEBI")
})

test_that("a single nested model is deserialised", {
  spectrum <- ApiClient$new()$deserialize(
    '{"precursorMz":1.23,"peaks":[{"mz":1.23,"intensity":4.56},{"mz":2.34,"intensity":5.67}]}',
    "BasicSpectrum", pkg)

  expect_true(inherits(spectrum, "BasicSpectrum"))
  expect_length(spectrum$peaks, 2)
  expect_equal(spectrum$peaks[[2]]$mz, 2.34)
})

test_that("arrays of primitives are still deserialised as before", {
  # the fix disables data.frame simplification only, so plain values must be unaffected
  strings <- ApiClient$new()$deserialize('["alpha","beta"]', "array[character]", pkg)
  expect_length(strings, 2)
  expect_equal(unlist(strings), c("alpha", "beta"))

  numbers <- ApiClient$new()$deserialize('[1.5,2.5,3.5]', "array[numeric]", pkg)
  expect_length(numbers, 3)
  expect_equal(unlist(numbers), c(1.5, 2.5, 3.5))
})

test_that("a server error is reported instead of aborting", {
  # The response body is a raw vector. Comparing it with "" produces one logical per byte, which
  # made || abort with "'length = <n>' in coercion to 'logical(1)'", hiding the actual server error
  # (issue #187). A 5xx must come back as an ApiResponse the caller can inspect.
  body <- paste0('{"title":"Internal Server Error","status":500,"detail":"',
                 strrep("x", 250), '"}')
  mock <- function(req) httr2::response(status_code = 500, body = charToRaw(body),
                                        headers = list("content-type" = "application/json"))

  api <- InfoApi$new(ApiClient$new())
  result <- httr2::with_mocked_responses(mock, api$GetInfoWithHttpInfo())

  expect_true(inherits(result, "ApiResponse"))
  expect_equal(result$status_code, 500)
})

test_that("a client error keeps its status code", {
  # The 4xx branch used to return an ApiResponse without a status code, so the plain wrapper failed
  # with "missing value where TRUE/FALSE needed" instead of reporting the error.
  mock <- function(req) httr2::response(status_code = 404, body = charToRaw('{"status":404}'),
                                        headers = list("content-type" = "application/json"))

  api <- InfoApi$new(ApiClient$new())
  with_http_info <- httr2::with_mocked_responses(mock, api$GetInfoWithHttpInfo())
  expect_equal(with_http_info$status_code, 404)

  # and the plain wrapper must not raise, it returns the response object
  plain <- httr2::with_mocked_responses(mock, api$GetInfo())
  expect_true(inherits(plain, "ApiResponse"))
  expect_equal(plain$status_code, 404)
})
