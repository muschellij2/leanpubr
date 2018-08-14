#' Leanpub Sales Information
#'
#' @inheritParams lp_get_wrapper
#'
#' @note See \url{https://leanpub.com/help/api}
#'
#' @return List of the result of the \code{\link{GET}} call and
#' the content
#' @export
#'
lp_sales = function(
  slug,
  api_key = NULL,
  secure = TRUE,
  verbose = TRUE,
  ...) {
  L = lp_get_wrapper(
    slug = slug,
    endpoint = "/sales",
    api_key = api_key,
    secure = secure,
    verbose = verbose, ...)
  return(L)

}

#' @rdname lp_sales
#' @export
#' @examples \donttest{
#' if (lp_have_api_key()) {
#' lp_all_sales(slug = "biostatmethods", query = list(page=2))
#' }
#' }
lp_all_sales = function(
  slug,
  api_key = NULL,
  secure = TRUE,
  verbose = TRUE,
  ...) {
  L = lp_get_wrapper(
    slug = slug,
    endpoint = "/individual_purchases",
    api_key = api_key,
    secure = secure,
    verbose = verbose, ...)
  return(L)

}

