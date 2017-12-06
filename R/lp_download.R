#' Leanpub Download Latest Version
#'
#' @inheritParams lp_get_wrapper
#' @param format format of the book to download
#'
#' @note See \url{https://leanpub.com/help/api}
#'
#' @return List of the result of the \code{\link{GET}} call and
#' the content
#'
lp_download = function(
  slug,
  format = c("pdf", "mobi", "epub"),
  api_key = NULL,
  secure = TRUE,
  verbose = TRUE,
  ...) {
  format = match.arg(format)

  L = lp_get_wrapper(
    slug = slug,
    endpoint = "/publish/download_latest_version",
    api_key = api_key,
    secure = secure,
    verbose = verbose,
    add_json = FALSE,
    ...)
  ### need more here to follow the redirect
  return(L)
}
