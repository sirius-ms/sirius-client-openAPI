% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aligned_feature_quality_experimental.R
\docType{class}
\name{AlignedFeatureQualityExperimental}
\alias{AlignedFeatureQualityExperimental}
\title{AlignedFeatureQualityExperimental}
\format{
An \code{R6Class} generator object
}
\description{
EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.

AlignedFeatureQualityExperimental Class
}
\details{
Create a new AlignedFeatureQualityExperimental
}
\examples{

## ------------------------------------------------
## Method `AlignedFeatureQualityExperimental$toList`
## ------------------------------------------------

# convert array of AlignedFeatureQualityExperimental (x) to a data frame
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
\item{\code{alignedFeatureId}}{Id of the feature (aligned over runs) this quality information belongs to. character}

\item{\code{overallQuality}}{Overall Quality character}

\item{\code{categories}}{Contains all pre-computation quality information that belong to  this feature (aligned over runs), such as information about the quality of the peak shape, MS2 spectrum etc., named list(\link{Category})}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-AlignedFeatureQualityExperimental-new}{\code{AlignedFeatureQualityExperimental$new()}}
\item \href{#method-AlignedFeatureQualityExperimental-toJSON}{\code{AlignedFeatureQualityExperimental$toJSON()}}
\item \href{#method-AlignedFeatureQualityExperimental-toList}{\code{AlignedFeatureQualityExperimental$toList()}}
\item \href{#method-AlignedFeatureQualityExperimental-toSimpleType}{\code{AlignedFeatureQualityExperimental$toSimpleType()}}
\item \href{#method-AlignedFeatureQualityExperimental-fromJSON}{\code{AlignedFeatureQualityExperimental$fromJSON()}}
\item \href{#method-AlignedFeatureQualityExperimental-toJSONString}{\code{AlignedFeatureQualityExperimental$toJSONString()}}
\item \href{#method-AlignedFeatureQualityExperimental-fromJSONString}{\code{AlignedFeatureQualityExperimental$fromJSONString()}}
\item \href{#method-AlignedFeatureQualityExperimental-validateJSON}{\code{AlignedFeatureQualityExperimental$validateJSON()}}
\item \href{#method-AlignedFeatureQualityExperimental-toString}{\code{AlignedFeatureQualityExperimental$toString()}}
\item \href{#method-AlignedFeatureQualityExperimental-isValid}{\code{AlignedFeatureQualityExperimental$isValid()}}
\item \href{#method-AlignedFeatureQualityExperimental-getInvalidFields}{\code{AlignedFeatureQualityExperimental$getInvalidFields()}}
\item \href{#method-AlignedFeatureQualityExperimental-print}{\code{AlignedFeatureQualityExperimental$print()}}
\item \href{#method-AlignedFeatureQualityExperimental-clone}{\code{AlignedFeatureQualityExperimental$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-new"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new AlignedFeatureQualityExperimental class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$new(
  alignedFeatureId,
  overallQuality,
  categories,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{alignedFeatureId}}{Id of the feature (aligned over runs) this quality information belongs to.}

\item{\code{overallQuality}}{Overall Quality}

\item{\code{categories}}{Contains all pre-computation quality information that belong to  this feature (aligned over runs), such as information about the quality of the peak shape, MS2 spectrum etc.,}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$toJSON()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-toList"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-toList}{}}}
\subsection{Method \code{toList()}}{
Convert to a List

Convert the R6 object to a list to work more easily with other tooling.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$toList()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
AlignedFeatureQualityExperimental as a base R list.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{# convert array of AlignedFeatureQualityExperimental (x) to a data frame
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
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-toSimpleType"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-toSimpleType}{}}}
\subsection{Method \code{toSimpleType()}}{
Convert AlignedFeatureQualityExperimental to a base R type
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$toSimpleType()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A base R type, e.g. a list or numeric/character array.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of AlignedFeatureQualityExperimental
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of AlignedFeatureQualityExperimental
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$toJSONString(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{Parameters passed to `jsonlite::toJSON`}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
AlignedFeatureQualityExperimental in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of AlignedFeatureQualityExperimental
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of AlignedFeatureQualityExperimental
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to AlignedFeatureQualityExperimental and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-toString"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of AlignedFeatureQualityExperimental
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-print"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-print}{}}}
\subsection{Method \code{print()}}{
Print the object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AlignedFeatureQualityExperimental-clone"></a>}}
\if{latex}{\out{\hypertarget{method-AlignedFeatureQualityExperimental-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlignedFeatureQualityExperimental$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
