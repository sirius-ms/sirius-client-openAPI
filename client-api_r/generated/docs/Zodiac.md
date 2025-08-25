# Rsirius::Zodiac

User/developer friendly parameter subset for the ZODIAC tool (Network base molecular formula re-ranking).  Needs results from Formula/SIRIUS Tool

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **character** | tags whether the tool is enabled | [optional] 
**consideredCandidatesAt300Mz** | **integer** | Maximum number of candidate molecular formulas (fragmentation trees computed by SIRIUS) per compound which are considered by ZODIAC for compounds below 300 m/z. | [optional] 
**consideredCandidatesAt800Mz** | **integer** | Maximum number of candidate molecular formulas (fragmentation trees computed by SIRIUS) per compound which are considered by ZODIAC for compounds above 800 m/z. | [optional] 
**runInTwoSteps** | **character** | As default ZODIAC runs a 2-step approach. First running &#39;good quality compounds&#39; only, and afterwards including the remaining. | [optional] 
**edgeFilterThresholds** | [**ZodiacEdgeFilterThresholds**](ZodiacEdgeFilterThresholds.md) | thresholdFilter &#x3D; Defines the proportion of edges of the complete network which will be ignored.  minLocalConnections &#x3D; Minimum number of compounds to which at least one candidate per compound must be connected to. | [optional] 
**gibbsSamplerParameters** | [**ZodiacEpochs**](ZodiacEpochs.md) | iterations: \&quot;Number of epochs to run the Gibbs sampling. When multiple Markov chains are computed, all chains&#39; iterations sum up to this value.\&quot;  burnInPeriod: \&quot;Number of epochs considered as &#39;burn-in period&#39;.  numberOfMarkovChains: Number of separate Gibbs sampling runs. | [optional] 
**librarySearchAnchors** | [**ZodiacLibraryScoring**](ZodiacLibraryScoring.md) | Configure the use of identity spectral library search results as anchors in ZODIAC network | [optional] 
**analogueSearchAnchors** | [**ZodiacAnalogueNodes**](ZodiacAnalogueNodes.md) | Configure the use of analogue spectral library search results as anchors in ZODIAC network | [optional] 


