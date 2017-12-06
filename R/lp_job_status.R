#' Leanpub Job Status
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
#' stat = lp_job_status(slug = "neuroimagingforstatisticians",
#' nonstop = TRUE)
lp_job_status = function(slug,
                         api_key = NULL,
                         secure = TRUE,
                         verbose = TRUE,
                         ...) {
  L = lp_get_wrapper(
    slug = slug,
    endpoint = "/job_status",
    api_key = api_key,
    secure = secure,
    verbose = verbose, ...)
  return(L)

}
