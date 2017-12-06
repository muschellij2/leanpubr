#' Leanpub Book Information
#'
#' @inheritParams lp_get_wrapper
#'
#' @note See \url{https://leanpub.com/help/api}
#'
#' @return List of the result of the \code{\link{GET}} call and
#' the content
#' @export
#'
#' @examples
#' stat = lp_book_info(slug = "modernscientist")
lp_book_info = function(
  slug,
  api_key = NULL,
  secure = TRUE,
  verbose = TRUE,
  ...) {
  L = lp_get_wrapper(
    slug = slug,
    endpoint = "",
    api_key = api_key,
    secure = secure,
    verbose = verbose,
    error = FALSE,
    ...)
  return(L)

}
