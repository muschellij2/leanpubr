% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lp_coupons.R
\name{lp_coupons}
\alias{lp_coupons}
\title{Leanpub Coupons}
\usage{
lp_coupons(slug, api_key = NULL, secure = TRUE, verbose = TRUE, ...)
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
Leanpub Coupons
}
\note{
See \url{https://leanpub.com/help/api}
}
