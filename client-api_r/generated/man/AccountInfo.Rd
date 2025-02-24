% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/account_info.R
\docType{class}
\name{AccountInfo}
\alias{AccountInfo}
\title{AccountInfo}
\format{
An \code{R6Class} generator object
}
\description{
AccountInfo Class

AccountInfo Class
}
\details{
Create a new AccountInfo
}
\examples{

## ------------------------------------------------
## Method `AccountInfo$toList`
## ------------------------------------------------

# convert array of AccountInfo (x) to a data frame
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
\item{\code{userID}}{character [optional]}

\item{\code{username}}{character [optional]}

\item{\code{userEmail}}{character [optional]}

\item{\code{gravatarURL}}{character [optional]}

\item{\code{subscriptions}}{list(\link{Subscription}) [optional]}

\item{\code{activeSubscriptionId}}{character [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-AccountInfo-new}{\code{AccountInfo$new()}}
\item \href{#method-AccountInfo-toJSON}{\code{AccountInfo$toJSON()}}
\item \href{#method-AccountInfo-toList}{\code{AccountInfo$toList()}}
\item \href{#method-AccountInfo-toSimpleType}{\code{AccountInfo$toSimpleType()}}
\item \href{#method-AccountInfo-fromJSON}{\code{AccountInfo$fromJSON()}}
\item \href{#method-AccountInfo-toJSONString}{\code{AccountInfo$toJSONString()}}
\item \href{#method-AccountInfo-fromJSONString}{\code{AccountInfo$fromJSONString()}}
\item \href{#method-AccountInfo-validateJSON}{\code{AccountInfo$validateJSON()}}
\item \href{#method-AccountInfo-toString}{\code{AccountInfo$toString()}}
\item \href{#method-AccountInfo-isValid}{\code{AccountInfo$isValid()}}
\item \href{#method-AccountInfo-getInvalidFields}{\code{AccountInfo$getInvalidFields()}}
\item \href{#method-AccountInfo-print}{\code{AccountInfo$print()}}
\item \href{#method-AccountInfo-clone}{\code{AccountInfo$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AccountInfo-new"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new AccountInfo class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$new(
  userID = NULL,
  username = NULL,
  userEmail = NULL,
  gravatarURL = NULL,
  subscriptions = NULL,
  activeSubscriptionId = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{userID}}{userID}

\item{\code{username}}{username}

\item{\code{userEmail}}{userEmail}

\item{\code{gravatarURL}}{gravatarURL}

\item{\code{subscriptions}}{subscriptions}

\item{\code{activeSubscriptionId}}{activeSubscriptionId}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AccountInfo-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$toJSON()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AccountInfo-toList"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-toList}{}}}
\subsection{Method \code{toList()}}{
Convert to a List

Convert the R6 object to a list to work more easily with other tooling.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$toList()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
AccountInfo as a base R list.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{# convert array of AccountInfo (x) to a data frame
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
\if{html}{\out{<a id="method-AccountInfo-toSimpleType"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-toSimpleType}{}}}
\subsection{Method \code{toSimpleType()}}{
Convert AccountInfo to a base R type
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$toSimpleType()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A base R type, e.g. a list or numeric/character array.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AccountInfo-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of AccountInfo
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of AccountInfo
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AccountInfo-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$toJSONString(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{Parameters passed to `jsonlite::toJSON`}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
AccountInfo in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AccountInfo-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of AccountInfo
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of AccountInfo
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AccountInfo-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to AccountInfo and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-AccountInfo-toString"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of AccountInfo
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AccountInfo-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AccountInfo-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AccountInfo-print"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-print}{}}}
\subsection{Method \code{print()}}{
Print the object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AccountInfo-clone"></a>}}
\if{latex}{\out{\hypertarget{method-AccountInfo-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AccountInfo$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
