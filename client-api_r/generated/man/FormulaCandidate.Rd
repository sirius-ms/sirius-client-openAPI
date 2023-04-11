% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formula_candidate.R
\docType{class}
\name{FormulaCandidate}
\alias{FormulaCandidate}
\title{FormulaCandidate}
\format{
An \code{R6Class} generator object
}
\description{
FormulaCandidate Class
}
\details{
Create a new FormulaCandidate
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{siriusScore}}{numeric [optional]}

\item{\code{isotopeScore}}{numeric [optional]}

\item{\code{treeScore}}{numeric [optional]}

\item{\code{zodiacScore}}{numeric [optional]}

\item{\code{molecularFormula}}{character [optional]}

\item{\code{adduct}}{character [optional]}

\item{\code{numOfexplainedPeaks}}{integer [optional]}

\item{\code{numOfexplainablePeaks}}{integer [optional]}

\item{\code{totalExplainedIntensity}}{numeric [optional]}

\item{\code{medianMassDeviation}}{\link{Deviation} [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-FormulaCandidate-new}{\code{FormulaCandidate$new()}}
\item \href{#method-FormulaCandidate-toJSON}{\code{FormulaCandidate$toJSON()}}
\item \href{#method-FormulaCandidate-fromJSON}{\code{FormulaCandidate$fromJSON()}}
\item \href{#method-FormulaCandidate-toJSONString}{\code{FormulaCandidate$toJSONString()}}
\item \href{#method-FormulaCandidate-fromJSONString}{\code{FormulaCandidate$fromJSONString()}}
\item \href{#method-FormulaCandidate-validateJSON}{\code{FormulaCandidate$validateJSON()}}
\item \href{#method-FormulaCandidate-toString}{\code{FormulaCandidate$toString()}}
\item \href{#method-FormulaCandidate-isValid}{\code{FormulaCandidate$isValid()}}
\item \href{#method-FormulaCandidate-getInvalidFields}{\code{FormulaCandidate$getInvalidFields()}}
\item \href{#method-FormulaCandidate-print}{\code{FormulaCandidate$print()}}
\item \href{#method-FormulaCandidate-clone}{\code{FormulaCandidate$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FormulaCandidate-new"></a>}}
\if{latex}{\out{\hypertarget{method-FormulaCandidate-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new FormulaCandidate class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FormulaCandidate$new(
  siriusScore = NULL,
  isotopeScore = NULL,
  treeScore = NULL,
  zodiacScore = NULL,
  molecularFormula = NULL,
  adduct = NULL,
  numOfexplainedPeaks = NULL,
  numOfexplainablePeaks = NULL,
  totalExplainedIntensity = NULL,
  medianMassDeviation = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{siriusScore}}{siriusScore}

\item{\code{isotopeScore}}{isotopeScore}

\item{\code{treeScore}}{treeScore}

\item{\code{zodiacScore}}{zodiacScore}

\item{\code{molecularFormula}}{molecularFormula}

\item{\code{adduct}}{adduct}

\item{\code{numOfexplainedPeaks}}{numOfexplainedPeaks}

\item{\code{numOfexplainablePeaks}}{numOfexplainablePeaks}

\item{\code{totalExplainedIntensity}}{totalExplainedIntensity}

\item{\code{medianMassDeviation}}{medianMassDeviation}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FormulaCandidate-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-FormulaCandidate-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FormulaCandidate$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
FormulaCandidate in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FormulaCandidate-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-FormulaCandidate-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of FormulaCandidate
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FormulaCandidate$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of FormulaCandidate
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FormulaCandidate-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-FormulaCandidate-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FormulaCandidate$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
FormulaCandidate in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FormulaCandidate-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-FormulaCandidate-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of FormulaCandidate
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FormulaCandidate$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of FormulaCandidate
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FormulaCandidate-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-FormulaCandidate-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to FormulaCandidate and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FormulaCandidate$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-FormulaCandidate-toString"></a>}}
\if{latex}{\out{\hypertarget{method-FormulaCandidate-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FormulaCandidate$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of FormulaCandidate
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FormulaCandidate-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-FormulaCandidate-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FormulaCandidate$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FormulaCandidate-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-FormulaCandidate-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FormulaCandidate$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FormulaCandidate-print"></a>}}
\if{latex}{\out{\hypertarget{method-FormulaCandidate-print}{}}}
\subsection{Method \code{print()}}{
Print the object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FormulaCandidate$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FormulaCandidate-clone"></a>}}
\if{latex}{\out{\hypertarget{method-FormulaCandidate-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FormulaCandidate$clone(deep = FALSE)}\if{html}{\out{</div>}}
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