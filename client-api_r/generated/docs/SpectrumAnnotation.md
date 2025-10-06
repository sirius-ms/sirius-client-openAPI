# RSirius::SpectrumAnnotation


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**molecularFormula** | **character** | Molecular formula that has been annotated to this spectrum | [optional] 
**adduct** | **character** | Adduct that has been annotated to this spectrum | [optional] 
**exactMass** | **numeric** | Exact mass based on the annotated molecular formula and ionization | [optional] 
**massDeviationMz** | **numeric** | Absolute mass deviation of the exact mass to the precursor mass (precursorMz) of this spectrum in mDa | [optional] 
**massDeviationPpm** | **numeric** | Relative mass deviation of the exact mass to the precursor mass (precursorMz) of this spectrum in ppm | [optional] 
**structureAnnotationSmiles** | **character** | EXPERIMENTAL: This field is experimental and may be changed (or even removed) without notice until it is declared stable.  &lt;p&gt;  Smiles of the structure candidate used to derive substructure peak annotations via epimetheus insilico fragmentation  Substructure highlighting (bond and atom indices) refer to this specific SMILES.  If you standardize or canonicalize this SMILES in any way the indices of substructure highlighting might  not match correctly anymore.  &lt;p&gt;  Null if substructure annotation not available or not requested. | [optional] 
**structureAnnotationName** | **character** | EXPERIMENTAL: This field is experimental and may be changed (or even removed) without notice until it is declared stable.  &lt;p&gt;  Name of the structure candidate used to derive substructure peak annotations via epimetheus insilico fragmentation.  &lt;p&gt;  Null if substructure annotation not available or not requested. | [optional] 
**structureAnnotationSvg** | **character** | EXPERIMENTAL: This field is experimental and may be changed (or even removed) without notice until it is declared stable.  &lt;p&gt;  SVG graphics of the structure candidate used to derive substructure peak annotations via epimetheus insilico fragmentation  Substructure highlighting (bond and atom indices) refers to this SVG.  &lt;p&gt;  Null if substructure annotation not available or not requested. | [optional] 
**structureAnnotationScore** | **numeric** | EXPERIMENTAL: This field is experimental and may be changed (or even removed) without notice until it is declared stable.  &lt;p&gt;  Overall score of all substructure annotations computed for this structure candidate (structureAnnotationSmiles)  &lt;p&gt;  Null if substructure annotation not available or not requested. | [optional] 


