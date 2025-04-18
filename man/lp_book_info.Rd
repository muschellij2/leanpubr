% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lp_book.R
\name{lp_book_info}
\alias{lp_book_info}
\alias{lp_summary}
\title{Leanpub Book Information}
\usage{
lp_book_info(slug, api_key = NULL, secure = TRUE, verbose = TRUE, ...)

lp_summary(slug, api_key = NULL, secure = TRUE, verbose = TRUE, ...)
}
\arguments{
\item{slug}{slug of the project}

\item{api_key}{API key for Leanpub, passed to \code{\link{lp_api_key}}}

\item{secure}{passed to \code{\link{lp_base_url}} for https}

\item{verbose}{print diagnostic messages}

\item{...}{additional options to pass to \code{\link[httr]{GET}}}
}
\value{
List of the result of the \code{\link[httr]{GET}} call and
the content
}
\description{
Leanpub Book Information
}
\note{
See \url{https://leanpub.com/help/api}
}
\examples{
if (lp_have_api_key()) {
stat = lp_book_info(slug = "modernscientist")
}
}
