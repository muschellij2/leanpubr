get_results = function(
  url, query = list(),
  verbose = TRUE, nonstop = FALSE,
  verb = "GET", ...) {
  res = do.call(verb, list(url = url, query = query, ...))
  if (verbose) {
    message(paste0(verb, " command is:"))
    r = res
    parsed_url = httr::parse_url(r$url)
    parsed_url$query$api_key = NULL
    r$url = httr::build_url(parsed_url)
    print(r)
  }
  if (!nonstop) {
    httr::stop_for_status(res)
  } else {
    httr::warn_for_status(res)
  }

  cr = httr::content(res)
  return(list(response = res, content = cr))
}


post_type = function(
  url,
  type = "json",
  verbose = TRUE,
  nonstop = FALSE, ...) {

  res = httr::POST(url,
                   content_type(type), ...)
  if (verbose) {
    message("POST command is:")
    print(res)
  }
  if (!nonstop) {
    httr::stop_for_status(res)
  } else {
    httr::warn_for_status(res)
  }

  cr = httr::content(res)
  return(list(response = res, content = cr))
}
