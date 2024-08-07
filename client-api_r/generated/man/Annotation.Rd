% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotation.R
\docType{class}
\name{Annotation}
\alias{Annotation}
\title{Annotation}
\format{
An \code{R6Class} generator object
}
\description{
Annotation Class

Annotation Class
}
\details{
Create a new Annotation
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{type}}{character [optional]}

\item{\code{description}}{character [optional]}

\item{\code{index}}{integer [optional]}

\item{\code{from}}{integer [optional]}

\item{\code{to}}{integer [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Annotation-new}{\code{Annotation$new()}}
\item \href{#method-Annotation-toJSON}{\code{Annotation$toJSON()}}
\item \href{#method-Annotation-fromJSON}{\code{Annotation$fromJSON()}}
\item \href{#method-Annotation-toJSONString}{\code{Annotation$toJSONString()}}
\item \href{#method-Annotation-fromJSONString}{\code{Annotation$fromJSONString()}}
\item \href{#method-Annotation-validateJSON}{\code{Annotation$validateJSON()}}
\item \href{#method-Annotation-toString}{\code{Annotation$toString()}}
\item \href{#method-Annotation-isValid}{\code{Annotation$isValid()}}
\item \href{#method-Annotation-getInvalidFields}{\code{Annotation$getInvalidFields()}}
\item \href{#method-Annotation-print}{\code{Annotation$print()}}
\item \href{#method-Annotation-clone}{\code{Annotation$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Annotation-new"></a>}}
\if{latex}{\out{\hypertarget{method-Annotation-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new Annotation class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Annotation$new(
  type = NULL,
  description = NULL,
  index = NULL,
  from = NULL,
  to = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{type}}{type}

\item{\code{description}}{description}

\item{\code{index}}{index}

\item{\code{from}}{from}

\item{\code{to}}{to}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Annotation-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Annotation-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Annotation$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Annotation in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Annotation-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Annotation-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of Annotation
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Annotation$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Annotation
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Annotation-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Annotation-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Annotation$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Annotation in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Annotation-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Annotation-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of Annotation
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Annotation$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Annotation
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Annotation-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Annotation-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to Annotation and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Annotation$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-Annotation-toString"></a>}}
\if{latex}{\out{\hypertarget{method-Annotation-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Annotation$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of Annotation
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Annotation-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-Annotation-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Annotation$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Annotation-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-Annotation-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Annotation$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Annotation-print"></a>}}
\if{latex}{\out{\hypertarget{method-Annotation-print}{}}}
\subsection{Method \code{print()}}{
Print the object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Annotation$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Annotation-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Annotation-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Annotation$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
