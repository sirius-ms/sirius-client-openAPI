# RSirius::BasicSpectrum


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | Optional Displayable name of this spectrum. | [optional] 
**msLevel** | **integer** | MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use null or zero | [optional] 
**collisionEnergy** | **character** | Collision energy used for MS/MS spectra  Null for spectra where collision energy is not applicable | [optional] 
**instrument** | **character** | Instrument information. | [optional] 
**precursorMz** | **numeric** | Precursor m/z of the MS/MS spectrum  Null for spectra where precursor m/z is not applicable | [optional] 
**scanNumber** | **integer** | Scan number of the spectrum.  Might be null for artificial spectra with no scan number (e.g. Simulated Isotope patterns or merged spectra) | [optional] 
**cosineQuery** | **character** | True if spectrum is in cosine query normalized format.  Such spectrum is compatible with SpectralLibraryMatch peak assignments to reference spectra. | [default to FALSE] 
**precursorPeak** | [**SimplePeak**](SimplePeak.md) |  | [optional] 
**peaks** | [**array[SimplePeak]**](SimplePeak.md) | The peaks of this spectrum which might contain additional annotations such as molecular formulas. | 
**absIntensityFactor** | **numeric** | Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra)  &lt;p&gt;  DEPRECATED: Spectra are always returned with raw intensities.  Use provided normalization factors to normalize on the fly. | [optional] 
**maxNormFactor** | **numeric** | Factor to convert absolute intensities to MAX norm. | [optional] 
**sumNormFactor** | **numeric** | Factor to convert absolute intensities to SUM norm. | [optional] 
**l2NormFactor** | **numeric** | Factor to convert absolute intensities to L2 (Euclidean) norm. | [optional] 
**firstPeakNormFactor** | **numeric** | Factor to convert absolute intensities to normalize intensities by first peak intensity. | [optional] 


