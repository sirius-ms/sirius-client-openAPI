# StructureDbSearch

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **Boolean** | tags whether the tool is enabled |  [optional]
**structureSearchDBs** | [**List&lt;StructureSearchDBsEnum&gt;**](#List&lt;StructureSearchDBsEnum&gt;) | Structure databases to search in |  [optional]
**tagLipids** | **Boolean** | Candidates matching the lipid class estimated by El Gordo will be tagged.  The lipid class will only be available if El Gordo predicts that the MS/MS is a lipid spectrum.  If this parameter is set to &#x27;false&#x27; El Gordo will still be executed and e.g. improve the fragmentation  tree, but the matching structure candidates will not be tagged if they match lipid class. |  [optional]

<a name="List<StructureSearchDBsEnum>"></a>
## Enum: List&lt;StructureSearchDBsEnum&gt;
Name | Value
---- | -----
ALL | &quot;ALL&quot;
ALL_BUT_INSILICO | &quot;ALL_BUT_INSILICO&quot;
PUBCHEM | &quot;PUBCHEM&quot;
MESH | &quot;MESH&quot;
HMDB | &quot;HMDB&quot;
KNAPSACK | &quot;KNAPSACK&quot;
CHEBI | &quot;CHEBI&quot;
PUBMED | &quot;PUBMED&quot;
BIO | &quot;BIO&quot;
KEGG | &quot;KEGG&quot;
HSDB | &quot;HSDB&quot;
MACONDA | &quot;MACONDA&quot;
METACYC | &quot;METACYC&quot;
GNPS | &quot;GNPS&quot;
ZINCBIO | &quot;ZINCBIO&quot;
TRAIN | &quot;TRAIN&quot;
UNDP | &quot;UNDP&quot;
YMDB | &quot;YMDB&quot;
PLANTCYC | &quot;PLANTCYC&quot;
NORMAN | &quot;NORMAN&quot;
ADDITIONAL | &quot;ADDITIONAL&quot;
SUPERNATURAL | &quot;SUPERNATURAL&quot;
COCONUT | &quot;COCONUT&quot;
PUBCHEMANNOTATIONBIO | &quot;PUBCHEMANNOTATIONBIO&quot;
PUBCHEMANNOTATIONDRUG | &quot;PUBCHEMANNOTATIONDRUG&quot;
PUBCHEMANNOTATIONSAFETYANDTOXIC | &quot;PUBCHEMANNOTATIONSAFETYANDTOXIC&quot;
PUBCHEMANNOTATIONFOOD | &quot;PUBCHEMANNOTATIONFOOD&quot;
LIPID | &quot;LIPID&quot;
KEGGMINE | &quot;KEGGMINE&quot;
ECOCYCMINE | &quot;ECOCYCMINE&quot;
YMDBMINE | &quot;YMDBMINE&quot;
