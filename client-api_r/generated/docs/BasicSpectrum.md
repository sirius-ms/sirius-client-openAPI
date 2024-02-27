# Rsirius::BasicSpectrum



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | Optional Displayable name of this spectrum. | [optional] 
**msLevel** | **integer** | MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use null or zero | [optional] 
**collisionEnergy** | **character** | Collision energy used for MS/MS spectra  Null for spectra where collision energy is not applicable | [optional] 
**precursorMz** | **numeric** | Precursor m/z of the MS/MS spectrum  Null for spectra where precursor m/z is not applicable | [optional] 
**scanNumber** | **integer** | Scan number of the spectrum.  Might be null for artificial spectra with no scan number (e.g. Simulated Isotope patterns or merged spectra) | [optional] 
**peaks** | [**array[SimplePeak]**](SimplePeak.md) | The peaks of this spectrum which might contain additional annotations such as molecular formulas. | 
**absIntensityFactor** | **numeric** | Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra) | [optional] 


