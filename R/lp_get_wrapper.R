#' Leanpub Wrapper for GET statements
#'
#' @param slug slug of the project
#' @param endpoint call to the api endpoint
#' @param api_key API key for Leanpub, passed to \code{\link{lp_api_key}}
#' @param secure passed to \code{\link{lp_base_url}} for https
#' @param verbose print diagnostic messages
#' @param ... additional options to pass to \code{\link{GET}}
#'
#' @note See \url{https://leanpub.com/help/api}
#'
#' @return List of the result of the \code{\link{GET}} call and
#' the content
#' @export
#'
#' @importFrom httr GET stop_for_status warn_for_status content
#' @importFrom httr POST content_type_json
#' @importFrom xml2 read_html
#' @examples
#' stat = lp_get_wrapper(slug = "neuroimagingforstatisticians",
#' endpoint = "job_status")
lp_get_wrapper = function(slug,
                          endpoint,
                          api_key = NULL,
                          secure = TRUE,
                          verbose = TRUE,
                          ...) {
  L = list(...)
  if ("error" %in% names(L)) {
    error = L$error
  } else {
    error = TRUE
  }
  api_key = lp_api_key(api_key = api_key, error = error)

  url = lp_base_url(secure = secure)
  path = paste0("/", slug, endpoint)
  path = paste0(path, ".json")
  url = paste0(url, path)

  if ("query" %in% names(L)) {
    query = L$query
  } else {
    query = list()
  }
  query$api_key = api_key

  L = get_results(
    url, query = query,
    verbose = verbose, ...)

  return(L)
}
