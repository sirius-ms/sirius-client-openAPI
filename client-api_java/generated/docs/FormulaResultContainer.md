

# FormulaResultContainer

Container for formula level results that holds a unique identifier (molecular formula + adduct).  It can be extended/annotated with a list of results that are available for this formula candidate and their scores.  It can further be extended/annotated with the action formula candidate results.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** | Unique identifier of this formula candidate |  [optional] |
|**molecularFormula** | **String** | molecular formula of this formula candidate |  [optional] |
|**adduct** | **String** | Adduct of this formula candidate |  [optional] |
|**resultOverview** | [**ResultOverview**](ResultOverview.md) |  |  [optional] |
|**candidate** | [**FormulaCandidate**](FormulaCandidate.md) |  |  [optional] |



