# Rsirius::SpectralLibrarySearch

User/developer friendly parameter subset for the Spectral library search tool.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **character** | tags whether the tool is enabled | [optional] 
**spectraSearchDBs** | **array[character]** | Structure Databases with Reference spectra to search in.  &lt;p&gt;  Defaults to BIO + Custom Databases. Possible values are available to Database API. | [optional] 
**peakDeviationPpm** | **numeric** | Maximum allowed mass deviation in ppm for matching peaks. | [optional] 
**precursorDeviationPpm** | **numeric** | Maximum allowed mass deviation in ppm for matching the precursor. If not specified, the same value as for the peaks is used. | [optional] 
**scoring** | **character** | Specify scoring method to match spectra  INTENSITY: Intensity weighted. Each peak matches at most one peak in the other spectrum.  GAUSSIAN: Treat peaks as (un-normalized) Gaussians and score overlapping areas of PDFs. Each peak might score against multiple peaks in the other spectrum.  MODIFIED_COSINE:  This algorithm requires that there is at most one pair of peaks (u,v) where the m/z of u and v are within the allowed mass tolerance. To be used for analog search with different precursor masses. | [optional] [Enum: [INTENSITY, GAUSSIAN, MODIFIED_COSINE]] 


