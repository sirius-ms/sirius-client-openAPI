# RSirius::Run


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**runId** | **character** | Identifier | [optional] 
**name** | **character** | Informative, human-readable name of the run | [optional] 
**source** | **character** | Source location | [optional] 
**chromatography** | **character** | Chromatography the run was measured with, e.g. &#39;Liquid Chromatography&#39;. | [optional] 
**ionization** | **character** | Ionization the run was measured with, named as in the HUPO PSI-MS controlled vocabulary,  e.g. &#39;electrospray ionization&#39;. | [optional] 
**fragmentation** | **character** | Fragmentation the run was measured with, named as in the HUPO PSI-MS controlled vocabulary,  e.g. &#39;beam-type collision-induced dissociation&#39;. | [optional] 
**massAnalyzers** | **array[character]** | Mass analyzers of the instrument the run was measured on, named as in the HUPO PSI-MS  controlled vocabulary, e.g. &#39;orbitrap&#39;. | [optional] 
**tags** | [**map(Tag)**](Tag.md) | Key: tagName, value: tag | [optional] 


