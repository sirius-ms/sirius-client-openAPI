# Zodiac

User/developer friendly parameter subset for the ZODIAC tool (Network base molecular formula re-ranking).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | tags whether the tool is enabled | [optional] 
**considered_candidates_at300_mz** | [**ZodiacNumberOfConsideredCandidatesAt300Mz**](ZodiacNumberOfConsideredCandidatesAt300Mz.md) |  | [optional] 
**considered_candidates_at800_mz** | [**ZodiacNumberOfConsideredCandidatesAt800Mz**](ZodiacNumberOfConsideredCandidatesAt800Mz.md) |  | [optional] 
**run_in_two_steps** | [**ZodiacRunInTwoSteps**](ZodiacRunInTwoSteps.md) |  | [optional] 
**edge_filter_thresholds** | [**ZodiacEdgeFilterThresholds**](ZodiacEdgeFilterThresholds.md) |  | [optional] 
**gibbs_sampler_parameters** | [**ZodiacEpochs**](ZodiacEpochs.md) |  | [optional] 

## Example

```python
from PySirius.models.zodiac import Zodiac

# TODO update the JSON string below
json = "{}"
# create an instance of Zodiac from a JSON string
zodiac_instance = Zodiac.from_json(json)
# print the JSON string representation of the object
print Zodiac.to_json()

# convert the object into a dict
zodiac_dict = zodiac_instance.to_dict()
# create an instance of Zodiac from a dict
zodiac_form_dict = zodiac.from_dict(zodiac_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


