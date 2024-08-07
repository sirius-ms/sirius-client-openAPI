% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/job_submission.R
\docType{class}
\name{JobSubmission}
\alias{JobSubmission}
\title{JobSubmission}
\format{
An \code{R6Class} generator object
}
\description{
Object to submit a job to be executed by SIRIUS

JobSubmission Class
}
\details{
Create a new JobSubmission
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{compoundIds}}{Compounds that should be the input for this Job  Will be converted to the respective alignedFeatureIds for computation.   At least one compoundId or alignedFeatureId needs to be specified. list(character) [optional]}

\item{\code{alignedFeatureIds}}{Features (aligned over runs) that should be the input for this Job   At least one compoundId or alignedFeatureId needs to be specified. list(character) [optional]}

\item{\code{fallbackAdducts}}{Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- list(character) [optional]}

\item{\code{enforcedAdducts}}{Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- list(character) [optional]}

\item{\code{detectableAdducts}}{Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- list(character) [optional]}

\item{\code{recompute}}{Indicate if already existing result for a tool to be executed should be overwritten or not. character [optional]}

\item{\code{spectraSearchParams}}{\link{SpectralLibrarySearch} [optional]}

\item{\code{formulaIdParams}}{\link{Sirius} [optional]}

\item{\code{zodiacParams}}{\link{Zodiac} [optional]}

\item{\code{fingerprintPredictionParams}}{\link{FingerprintPrediction} [optional]}

\item{\code{canopusParams}}{\link{Canopus} [optional]}

\item{\code{structureDbSearchParams}}{\link{StructureDbSearch} [optional]}

\item{\code{msNovelistParams}}{\link{MsNovelist} [optional]}

\item{\code{configMap}}{As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint. named list(character) [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-JobSubmission-new}{\code{JobSubmission$new()}}
\item \href{#method-JobSubmission-toJSON}{\code{JobSubmission$toJSON()}}
\item \href{#method-JobSubmission-fromJSON}{\code{JobSubmission$fromJSON()}}
\item \href{#method-JobSubmission-toJSONString}{\code{JobSubmission$toJSONString()}}
\item \href{#method-JobSubmission-fromJSONString}{\code{JobSubmission$fromJSONString()}}
\item \href{#method-JobSubmission-validateJSON}{\code{JobSubmission$validateJSON()}}
\item \href{#method-JobSubmission-toString}{\code{JobSubmission$toString()}}
\item \href{#method-JobSubmission-isValid}{\code{JobSubmission$isValid()}}
\item \href{#method-JobSubmission-getInvalidFields}{\code{JobSubmission$getInvalidFields()}}
\item \href{#method-JobSubmission-print}{\code{JobSubmission$print()}}
\item \href{#method-JobSubmission-clone}{\code{JobSubmission$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-JobSubmission-new"></a>}}
\if{latex}{\out{\hypertarget{method-JobSubmission-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new JobSubmission class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobSubmission$new(
  compoundIds = NULL,
  alignedFeatureIds = NULL,
  fallbackAdducts = NULL,
  enforcedAdducts = NULL,
  detectableAdducts = NULL,
  recompute = NULL,
  spectraSearchParams = NULL,
  formulaIdParams = NULL,
  zodiacParams = NULL,
  fingerprintPredictionParams = NULL,
  canopusParams = NULL,
  structureDbSearchParams = NULL,
  msNovelistParams = NULL,
  configMap = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{compoundIds}}{Compounds that should be the input for this Job  Will be converted to the respective alignedFeatureIds for computation.   At least one compoundId or alignedFeatureId needs to be specified.}

\item{\code{alignedFeatureIds}}{Features (aligned over runs) that should be the input for this Job   At least one compoundId or alignedFeatureId needs to be specified.}

\item{\code{fallbackAdducts}}{Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-}

\item{\code{enforcedAdducts}}{Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-}

\item{\code{detectableAdducts}}{Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-}

\item{\code{recompute}}{Indicate if already existing result for a tool to be executed should be overwritten or not.}

\item{\code{spectraSearchParams}}{spectraSearchParams}

\item{\code{formulaIdParams}}{formulaIdParams}

\item{\code{zodiacParams}}{zodiacParams}

\item{\code{fingerprintPredictionParams}}{fingerprintPredictionParams}

\item{\code{canopusParams}}{canopusParams}

\item{\code{structureDbSearchParams}}{structureDbSearchParams}

\item{\code{msNovelistParams}}{msNovelistParams}

\item{\code{configMap}}{As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint.}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-JobSubmission-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-JobSubmission-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobSubmission$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
JobSubmission in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-JobSubmission-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-JobSubmission-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of JobSubmission
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobSubmission$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of JobSubmission
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-JobSubmission-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-JobSubmission-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobSubmission$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
JobSubmission in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-JobSubmission-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-JobSubmission-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of JobSubmission
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobSubmission$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of JobSubmission
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-JobSubmission-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-JobSubmission-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to JobSubmission and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobSubmission$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-JobSubmission-toString"></a>}}
\if{latex}{\out{\hypertarget{method-JobSubmission-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobSubmission$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of JobSubmission
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-JobSubmission-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-JobSubmission-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobSubmission$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-JobSubmission-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-JobSubmission-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobSubmission$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-JobSubmission-print"></a>}}
\if{latex}{\out{\hypertarget{method-JobSubmission-print}{}}}
\subsection{Method \code{print()}}{
Print the object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobSubmission$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-JobSubmission-clone"></a>}}
\if{latex}{\out{\hypertarget{method-JobSubmission-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobSubmission$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
