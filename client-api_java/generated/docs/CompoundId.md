

# CompoundId

The CompoundId contains the ID of a compound together with some read-only information that might be displayed in  some summary view.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  [optional] |
|**name** | **String** |  |  [optional] |
|**index** | **Long** |  |  [optional] |
|**ionMass** | **Double** |  |  [optional] |
|**ionType** | **String** |  |  [optional] |
|**rtStartSeconds** | **Double** |  |  [optional] |
|**rtEndSeconds** | **Double** |  |  [optional] |
|**topAnnotation** | [**CompoundAnnotation**](CompoundAnnotation.md) |  |  [optional] |
|**msData** | [**MsData**](MsData.md) |  |  [optional] |
|**qualityFlags** | [**List&lt;QualityFlagsEnum&gt;**](#List&lt;QualityFlagsEnum&gt;) | Contains all pre-computation quality information that belong to  this compound, such as information about the quality of the peak shape, MS2 spectrum etc.,  see ({@link CompoundQuality.CompoundQualityFlag CompoundQuality.CompoundQualityFlag})  &lt;p&gt;  Each Compound has a Set of Quality assessment flags. |  [optional] |
|**lcmsCompoundSummaryQualityData** | [**LCMSFeatureSummaryQualityData**](LCMSFeatureSummaryQualityData.md) |  |  [optional] |
|**computing** | **Boolean** |  |  [optional] |



## Enum: List&lt;QualityFlagsEnum&gt;

| Name | Value |
|---- | -----|
| GOOD | &quot;Good&quot; |
| LOWINTENSITY | &quot;LowIntensity&quot; |
| NOMS1PEAK | &quot;NoMS1Peak&quot; |
| FEWPEAKS | &quot;FewPeaks&quot; |
| CHIMERIC | &quot;Chimeric&quot; |
| NOTMONOISOTOPICPEAK | &quot;NotMonoisotopicPeak&quot; |
| POORLYEXPLAINED | &quot;PoorlyExplained&quot; |
| UNKNOWN | &quot;UNKNOWN&quot; |
| BADISOTOPEPATTERN | &quot;BadIsotopePattern&quot; |
| BADPEAKSHAPE | &quot;BadPeakShape&quot; |



