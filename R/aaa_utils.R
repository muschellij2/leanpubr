get_results = function(
  url, query = list(),
  verbose = TRUE, nonstop = FALSE, ...) {
  res = httr::GET(url, query = query, ...)
  if (verbose) {
    message("GET command is:")
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


post_json = function(
  url,
  config = list(),
  body = NULL,
  verbose = TRUE,
  nonstop = FALSE, ...) {

  res = httr::POST(url,
                   config = config,
                   body = body,
                   httr::content_type_json(), ...)
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
