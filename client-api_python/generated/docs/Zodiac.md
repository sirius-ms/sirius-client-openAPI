# Zodiac

User/developer friendly parameter subset for the ZODIAC tool (Network base molecular formula re-ranking).  Needs results from Formula/SIRIUS Tool

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | tags whether the tool is enabled | [optional] 
**considered_candidates_at300_mz** | **int** | Maximum number of candidate molecular formulas (fragmentation trees computed by SIRIUS) per compound which are considered by ZODIAC for compounds below 300 m/z. | [optional] 
**considered_candidates_at800_mz** | **int** | Maximum number of candidate molecular formulas (fragmentation trees computed by SIRIUS) per compound which are considered by ZODIAC for compounds above 800 m/z. | [optional] 
**run_in_two_steps** | **bool** | As default ZODIAC runs a 2-step approach. First running &#39;good quality compounds&#39; only, and afterwards including the remaining. | [optional] 
**edge_filter_thresholds** | [**ZodiacEdgeFilterThresholds**](ZodiacEdgeFilterThresholds.md) | thresholdFilter &#x3D; Defines the proportion of edges of the complete network which will be ignored.  minLocalConnections &#x3D; Minimum number of compounds to which at least one candidate per compound must be connected to. | [optional] 
**gibbs_sampler_parameters** | [**ZodiacEpochs**](ZodiacEpochs.md) | iterations: \&quot;Number of epochs to run the Gibbs sampling. When multiple Markov chains are computed, all chains&#39; iterations sum up to this value.\&quot;  burnInPeriod: \&quot;Number of epochs considered as &#39;burn-in period&#39;.  numberOfMarkovChains: Number of separate Gibbs sampling runs. | [optional] 
**library_search_anchors** | [**ZodiacLibraryScoring**](ZodiacLibraryScoring.md) | Configure the use of identity spectral library search results as anchors in ZODIAC network | [optional] 
**analogue_search_anchors** | [**ZodiacAnalogueNodes**](ZodiacAnalogueNodes.md) | Configure the use of analogue spectral library search results as anchors in ZODIAC network | [optional] 

## Example

```python
from PySirius.models.zodiac import Zodiac

# TODO update the JSON string below
json = "{}"
# create an instance of Zodiac from a JSON string
zodiac_instance = Zodiac.from_json(json)
# print the JSON string representation of the object
print(Zodiac.to_json())

# convert the object into a dict
zodiac_dict = zodiac_instance.to_dict()
# create an instance of Zodiac from a dict
zodiac_from_dict = Zodiac.from_dict(zodiac_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


