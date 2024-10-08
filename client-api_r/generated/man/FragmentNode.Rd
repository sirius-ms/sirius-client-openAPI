% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fragment_node.R
\docType{class}
\name{FragmentNode}
\alias{FragmentNode}
\title{FragmentNode}
\format{
An \code{R6Class} generator object
}
\description{
FragmentNode Class

FragmentNode Class
}
\details{
Create a new FragmentNode
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{fragmentId}}{integer [optional]}

\item{\code{molecularFormula}}{character [optional]}

\item{\code{ionType}}{character [optional]}

\item{\code{massDeviationDa}}{numeric [optional]}

\item{\code{massDeviationPpm}}{numeric [optional]}

\item{\code{score}}{numeric [optional]}

\item{\code{intensity}}{numeric [optional]}

\item{\code{mz}}{numeric [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-FragmentNode-new}{\code{FragmentNode$new()}}
\item \href{#method-FragmentNode-toJSON}{\code{FragmentNode$toJSON()}}
\item \href{#method-FragmentNode-fromJSON}{\code{FragmentNode$fromJSON()}}
\item \href{#method-FragmentNode-toJSONString}{\code{FragmentNode$toJSONString()}}
\item \href{#method-FragmentNode-fromJSONString}{\code{FragmentNode$fromJSONString()}}
\item \href{#method-FragmentNode-validateJSON}{\code{FragmentNode$validateJSON()}}
\item \href{#method-FragmentNode-toString}{\code{FragmentNode$toString()}}
\item \href{#method-FragmentNode-isValid}{\code{FragmentNode$isValid()}}
\item \href{#method-FragmentNode-getInvalidFields}{\code{FragmentNode$getInvalidFields()}}
\item \href{#method-FragmentNode-print}{\code{FragmentNode$print()}}
\item \href{#method-FragmentNode-clone}{\code{FragmentNode$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FragmentNode-new"></a>}}
\if{latex}{\out{\hypertarget{method-FragmentNode-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new FragmentNode class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FragmentNode$new(
  fragmentId = NULL,
  molecularFormula = NULL,
  ionType = NULL,
  massDeviationDa = NULL,
  massDeviationPpm = NULL,
  score = NULL,
  intensity = NULL,
  mz = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{fragmentId}}{fragmentId}

\item{\code{molecularFormula}}{molecularFormula}

\item{\code{ionType}}{ionType}

\item{\code{massDeviationDa}}{massDeviationDa}

\item{\code{massDeviationPpm}}{massDeviationPpm}

\item{\code{score}}{score}

\item{\code{intensity}}{intensity}

\item{\code{mz}}{mz}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FragmentNode-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-FragmentNode-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FragmentNode$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
FragmentNode in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FragmentNode-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-FragmentNode-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of FragmentNode
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FragmentNode$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of FragmentNode
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FragmentNode-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-FragmentNode-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FragmentNode$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
FragmentNode in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FragmentNode-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-FragmentNode-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of FragmentNode
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FragmentNode$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of FragmentNode
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FragmentNode-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-FragmentNode-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to FragmentNode and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FragmentNode$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-FragmentNode-toString"></a>}}
\if{latex}{\out{\hypertarget{method-FragmentNode-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FragmentNode$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of FragmentNode
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FragmentNode-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-FragmentNode-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FragmentNode$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FragmentNode-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-FragmentNode-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FragmentNode$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FragmentNode-print"></a>}}
\if{latex}{\out{\hypertarget{method-FragmentNode-print}{}}}
\subsection{Method \code{print()}}{
Print the object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FragmentNode$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FragmentNode-clone"></a>}}
\if{latex}{\out{\hypertarget{method-FragmentNode-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FragmentNode$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
