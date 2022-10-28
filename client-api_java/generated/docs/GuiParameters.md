# GuiParameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**selectedTab** | [**SelectedTabEnum**](#SelectedTabEnum) | Selected Result ab. |  [optional]
**cid** | **String** | ID of Selected compound. |  [optional]
**fid** | **String** | ID of Selected Formula candidate of the selected compound. |  [optional]
**structureCandidateInChIKey** | **String** | InChIKey of selected structure candidate of selected formula candidate. |  [optional]
**bringToFront** | **Boolean** | If true bring SIRIUS GUI window to foreground. |  [optional]

<a name="SelectedTabEnum"></a>
## Enum: SelectedTabEnum
Name | Value
---- | -----
FORMULAS | &quot;FORMULAS&quot;
SPECTRA | &quot;SPECTRA&quot;
TREES | &quot;TREES&quot;
PREDICTED_FINGERPRINT | &quot;PREDICTED_FINGERPRINT&quot;
STRUCTURES | &quot;STRUCTURES&quot;
STRUCTURE_ANNOTATION | &quot;STRUCTURE_ANNOTATION&quot;
COMPOUND_CLASSES | &quot;COMPOUND_CLASSES&quot;
