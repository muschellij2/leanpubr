#' Leanpub Links
#'
#' @inheritParams lp_get_wrapper
#'
#' @note See \url{https://leanpub.com/help/api}
#'
#' @return List of the result of the \code{\link{GET}} call and
#' the content
#' @export
#' @examples
#' slug = "neuroimagingforstatisticians"
#' res = lp_links(slug, nonstop = TRUE, error = FALSE)
lp_links = function(
  slug,
  api_key = NULL,
  secure = TRUE,
  verbose = TRUE,
  ...) {
  L = lp_get_wrapper(
    slug = slug,
    endpoint = "/preview/links",
    api_key = api_key,
    secure = secure,
    verbose = verbose,
    add_json = FALSE,
    ...)
  return(L)
}
