% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gui_info.R
\docType{class}
\name{GuiInfo}
\alias{GuiInfo}
\title{GuiInfo}
\format{
An \code{R6Class} generator object
}
\description{
GuiInfo Class

GuiInfo Class
}
\details{
Create a new GuiInfo
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{projectId}}{The project this instance is running on character [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-GuiInfo-new}{\code{GuiInfo$new()}}
\item \href{#method-GuiInfo-toJSON}{\code{GuiInfo$toJSON()}}
\item \href{#method-GuiInfo-fromJSON}{\code{GuiInfo$fromJSON()}}
\item \href{#method-GuiInfo-toJSONString}{\code{GuiInfo$toJSONString()}}
\item \href{#method-GuiInfo-fromJSONString}{\code{GuiInfo$fromJSONString()}}
\item \href{#method-GuiInfo-validateJSON}{\code{GuiInfo$validateJSON()}}
\item \href{#method-GuiInfo-toString}{\code{GuiInfo$toString()}}
\item \href{#method-GuiInfo-isValid}{\code{GuiInfo$isValid()}}
\item \href{#method-GuiInfo-getInvalidFields}{\code{GuiInfo$getInvalidFields()}}
\item \href{#method-GuiInfo-print}{\code{GuiInfo$print()}}
\item \href{#method-GuiInfo-clone}{\code{GuiInfo$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GuiInfo-new"></a>}}
\if{latex}{\out{\hypertarget{method-GuiInfo-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new GuiInfo class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GuiInfo$new(projectId = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{projectId}}{The project this instance is running on}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GuiInfo-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-GuiInfo-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GuiInfo$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
GuiInfo in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GuiInfo-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-GuiInfo-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of GuiInfo
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GuiInfo$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of GuiInfo
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GuiInfo-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-GuiInfo-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GuiInfo$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
GuiInfo in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GuiInfo-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-GuiInfo-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of GuiInfo
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GuiInfo$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of GuiInfo
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GuiInfo-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-GuiInfo-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to GuiInfo and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GuiInfo$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-GuiInfo-toString"></a>}}
\if{latex}{\out{\hypertarget{method-GuiInfo-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GuiInfo$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of GuiInfo
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GuiInfo-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-GuiInfo-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GuiInfo$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GuiInfo-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-GuiInfo-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GuiInfo$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GuiInfo-print"></a>}}
\if{latex}{\out{\hypertarget{method-GuiInfo-print}{}}}
\subsection{Method \code{print()}}{
Print the object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GuiInfo$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GuiInfo-clone"></a>}}
\if{latex}{\out{\hypertarget{method-GuiInfo-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GuiInfo$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
