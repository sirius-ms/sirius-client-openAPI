# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test AlignedFeature")

model_instance <- AlignedFeature$new()

test_that("alignedFeatureId", {
  # tests for the property `alignedFeatureId` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`alignedFeatureId`, "EXPECTED_RESULT")
})

test_that("compoundId", {
  # tests for the property `compoundId` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`compoundId`, "EXPECTED_RESULT")
})

test_that("name", {
  # tests for the property `name` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`name`, "EXPECTED_RESULT")
})

test_that("externalFeatureId", {
  # tests for the property `externalFeatureId` (character)
  # Externally provided FeatureId (e.g. by some preprocessing tool).  This FeatureId is NOT used by SIRIUS but is stored to ease mapping information back to the source.

  # uncomment below to test the property
  #expect_equal(model.instance$`externalFeatureId`, "EXPECTED_RESULT")
})

test_that("ionMass", {
  # tests for the property `ionMass` (numeric)

  # uncomment below to test the property
  #expect_equal(model.instance$`ionMass`, "EXPECTED_RESULT")
})

test_that("charge", {
  # tests for the property `charge` (integer)
  # Ion mode (charge) this feature has been measured in.

  # uncomment below to test the property
  #expect_equal(model.instance$`charge`, "EXPECTED_RESULT")
})

test_that("detectedAdducts", {
  # tests for the property `detectedAdducts` (set[character])
  # Adducts of this feature that have been detected during preprocessing.

  # uncomment below to test the property
  #expect_equal(model.instance$`detectedAdducts`, "EXPECTED_RESULT")
})

test_that("rtStartSeconds", {
  # tests for the property `rtStartSeconds` (numeric)

  # uncomment below to test the property
  #expect_equal(model.instance$`rtStartSeconds`, "EXPECTED_RESULT")
})

test_that("rtEndSeconds", {
  # tests for the property `rtEndSeconds` (numeric)

  # uncomment below to test the property
  #expect_equal(model.instance$`rtEndSeconds`, "EXPECTED_RESULT")
})

test_that("rtApexSeconds", {
  # tests for the property `rtApexSeconds` (numeric)

  # uncomment below to test the property
  #expect_equal(model.instance$`rtApexSeconds`, "EXPECTED_RESULT")
})

test_that("quality", {
  # tests for the property `quality` (DataQuality)

  # uncomment below to test the property
  #expect_equal(model.instance$`quality`, "EXPECTED_RESULT")
})

test_that("hasMs1", {
  # tests for the property `hasMs1` (character)
  # If true, the feature has at lease one MS1 spectrum

  # uncomment below to test the property
  #expect_equal(model.instance$`hasMs1`, "EXPECTED_RESULT")
})

test_that("hasMsMs", {
  # tests for the property `hasMsMs` (character)
  # If true, the feature has at lease one MS/MS spectrum

  # uncomment below to test the property
  #expect_equal(model.instance$`hasMsMs`, "EXPECTED_RESULT")
})

test_that("msData", {
  # tests for the property `msData` (MsData)

  # uncomment below to test the property
  #expect_equal(model.instance$`msData`, "EXPECTED_RESULT")
})

test_that("topAnnotations", {
  # tests for the property `topAnnotations` (FeatureAnnotations)

  # uncomment below to test the property
  #expect_equal(model.instance$`topAnnotations`, "EXPECTED_RESULT")
})

test_that("topAnnotationsDeNovo", {
  # tests for the property `topAnnotationsDeNovo` (FeatureAnnotations)

  # uncomment below to test the property
  #expect_equal(model.instance$`topAnnotationsDeNovo`, "EXPECTED_RESULT")
})

test_that("computing", {
  # tests for the property `computing` (character)
  # Write lock for this feature. If the feature is locked no write operations are possible.  True if any computation is modifying this feature or its results

  # uncomment below to test the property
  #expect_equal(model.instance$`computing`, "EXPECTED_RESULT")
})
