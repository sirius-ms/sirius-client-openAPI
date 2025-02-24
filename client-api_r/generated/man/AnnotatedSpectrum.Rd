% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotated_spectrum.R
\docType{class}
\name{AnnotatedSpectrum}
\alias{AnnotatedSpectrum}
\title{AnnotatedSpectrum}
\format{
An \code{R6Class} generator object
}
\description{
Spectrum model with peak annotations based on the fragmentation tree and Epimetheus substructure annotations.  Molecular formula and adduct of the spectrum are identical to the ones of the corresponding molecular formula candidate and FragmentationTree.  Fragment molecular formulas and adducts correspond to the FragmentationTree's FragmentNodes

AnnotatedSpectrum Class
}
\details{
Create a new AnnotatedSpectrum
}
\examples{

## ------------------------------------------------
## Method `AnnotatedSpectrum$toList`
## ------------------------------------------------

# convert array of AnnotatedSpectrum (x) to a data frame
\dontrun{
library(purrr)
library(tibble)
df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
df
}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{name}}{Optional Displayable name of this spectrum. character [optional]}

\item{\code{msLevel}}{MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use null or zero integer [optional]}

\item{\code{collisionEnergy}}{Collision energy used for MS/MS spectra  Null for spectra where collision energy is not applicable character [optional]}

\item{\code{instrument}}{Instrument information. character [optional]}

\item{\code{precursorMz}}{Precursor m/z of the MS/MS spectrum  Null for spectra where precursor m/z is not applicable numeric [optional]}

\item{\code{scanNumber}}{Scan number of the spectrum.  Might be null for artificial spectra with no scan number (e.g. Simulated Isotope patterns or merged spectra) integer [optional]}

\item{\code{peaks}}{The peaks of this spectrum which might contain additional annotations such as molecular formulas. list(\link{AnnotatedPeak})}

\item{\code{absIntensityFactor}}{Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra) numeric [optional]}

\item{\code{spectrumAnnotation}}{\link{SpectrumAnnotation} [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-AnnotatedSpectrum-new}{\code{AnnotatedSpectrum$new()}}
\item \href{#method-AnnotatedSpectrum-toJSON}{\code{AnnotatedSpectrum$toJSON()}}
\item \href{#method-AnnotatedSpectrum-toList}{\code{AnnotatedSpectrum$toList()}}
\item \href{#method-AnnotatedSpectrum-toSimpleType}{\code{AnnotatedSpectrum$toSimpleType()}}
\item \href{#method-AnnotatedSpectrum-fromJSON}{\code{AnnotatedSpectrum$fromJSON()}}
\item \href{#method-AnnotatedSpectrum-toJSONString}{\code{AnnotatedSpectrum$toJSONString()}}
\item \href{#method-AnnotatedSpectrum-fromJSONString}{\code{AnnotatedSpectrum$fromJSONString()}}
\item \href{#method-AnnotatedSpectrum-validateJSON}{\code{AnnotatedSpectrum$validateJSON()}}
\item \href{#method-AnnotatedSpectrum-toString}{\code{AnnotatedSpectrum$toString()}}
\item \href{#method-AnnotatedSpectrum-isValid}{\code{AnnotatedSpectrum$isValid()}}
\item \href{#method-AnnotatedSpectrum-getInvalidFields}{\code{AnnotatedSpectrum$getInvalidFields()}}
\item \href{#method-AnnotatedSpectrum-print}{\code{AnnotatedSpectrum$print()}}
\item \href{#method-AnnotatedSpectrum-clone}{\code{AnnotatedSpectrum$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-new"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new AnnotatedSpectrum class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$new(
  peaks,
  name = NULL,
  msLevel = NULL,
  collisionEnergy = NULL,
  instrument = NULL,
  precursorMz = NULL,
  scanNumber = NULL,
  absIntensityFactor = NULL,
  spectrumAnnotation = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{peaks}}{The peaks of this spectrum which might contain additional annotations such as molecular formulas.}

\item{\code{name}}{Optional Displayable name of this spectrum.}

\item{\code{msLevel}}{MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use null or zero}

\item{\code{collisionEnergy}}{Collision energy used for MS/MS spectra  Null for spectra where collision energy is not applicable}

\item{\code{instrument}}{Instrument information.}

\item{\code{precursorMz}}{Precursor m/z of the MS/MS spectrum  Null for spectra where precursor m/z is not applicable}

\item{\code{scanNumber}}{Scan number of the spectrum.  Might be null for artificial spectra with no scan number (e.g. Simulated Isotope patterns or merged spectra)}

\item{\code{absIntensityFactor}}{Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra)}

\item{\code{spectrumAnnotation}}{spectrumAnnotation}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$toJSON()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-toList"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-toList}{}}}
\subsection{Method \code{toList()}}{
Convert to a List

Convert the R6 object to a list to work more easily with other tooling.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$toList()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
AnnotatedSpectrum as a base R list.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{# convert array of AnnotatedSpectrum (x) to a data frame
\dontrun{
library(purrr)
library(tibble)
df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
df
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-toSimpleType"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-toSimpleType}{}}}
\subsection{Method \code{toSimpleType()}}{
Convert AnnotatedSpectrum to a base R type
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$toSimpleType()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A base R type, e.g. a list or numeric/character array.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of AnnotatedSpectrum
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of AnnotatedSpectrum
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$toJSONString(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{Parameters passed to `jsonlite::toJSON`}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
AnnotatedSpectrum in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of AnnotatedSpectrum
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of AnnotatedSpectrum
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to AnnotatedSpectrum and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$validateJSON(input)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input}}{the JSON input}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-toString"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of AnnotatedSpectrum
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-print"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-print}{}}}
\subsection{Method \code{print()}}{
Print the object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnnotatedSpectrum-clone"></a>}}
\if{latex}{\out{\hypertarget{method-AnnotatedSpectrum-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnnotatedSpectrum$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
