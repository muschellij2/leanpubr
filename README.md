
[![Travis build
status](https://travis-ci.org/muschellij2/leanpubr.svg?branch=master)](https://travis-ci.org/muschellij2/leanpubr)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/leanpubr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/leanpubr)
[![Coverage
status](https://coveralls.io/repos/github/muschellij2/leanpubr/badge.svg?branch=master)](https://coveralls.io/r/muschellij2/leanpubr?branch=master)
<!-- README.md is generated from README.Rmd. Please edit that file -->

# leanpubr Package:

The goal of `leanpubr` is to provide provides access to the ‘Leanpub’
‘API’ <https://leanpub.com/help/api> for gathering information about
publications and submissions to the ‘Leanpub’ platform.

## Installation

You can install `leanpubr` from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("muschellij2/leanpubr")
```

## Setting the API key

The main thing you need to do is get an API key from Leanpub. You can do
this by visiting <https://leanpub.com/author_dashboard/settings> if you
are an author. If you are not an author, I don’t believe access to the
API is possible. You can pass this `api_key` to functions in Leanpub
(almost all prefixed by `lp_`), or you can set the environmental
variable `LEANPUB_API_KEY`. You can set this in an interactive `R`
session such as:

``` r
Sys.setenv("LEANPUB_API_KEY" = "YOUR_KEY")
```

or put this in your `~/.Renviron`:

``` r
LEANPUB_API_KEY = "YOUR_KEY"
```

## Example

You can use `lp_book_info` to get information about any book in Leanpub:

``` r
library(leanpubr)
slug = "biostatmethods"
res = lp_book_info(slug, error = FALSE, verbose = TRUE)
#> GET command is:
#> Response [https://leanpub.com/biostatmethods.json]
#>   Date: 2018-08-14 16:32
#>   Status: 200
#>   Content-Type: application/json; charset=utf-8
#>   Size: 1.64 kB
res$content
#> $id
#> [1] 46133
#> 
#> $title
#> [1] "Methods in Biostatistics with R"
#> 
#> $subtitle
#> [1] "A Rigorous and Practical Treatment of Biostatistics Foundations using R"
#> 
#> $slug
#> [1] "biostatmethods"
#> 
#> $about_the_book
#> [1] "<p>Biostatistics is easy to teach poorly. Too often, books focus on methodology with no emphasis on programming and practical implementations. In contrast, books focused on R programming and visualization rarely discuss foundational topics that provide the infrastructure needed by data analysts to make decisions, evaluate analytic tools, and get ready for new and unforeseen challenges. Thus, we are bridging this divide that had no reason to exist in the first place. The book is unapologetic about its focus on Biostatistics, that is Statistics with Biological, Public Health, and Medical applications, though we think that it could be used successfully for large Statistical and Data Science Courses. Data and code can be downloaded here: <a href=\"https://github.com/muschellij2/biostatmethods\" target=\"_blank\">https://github.com/muschellij2/biostatmethods</a></p>"
#> 
#> $last_published_at
#> [1] "2018-07-23T20:58:06.000Z"
#> 
#> $page_count_published
#> [1] 478
#> 
#> $total_copies_sold
#> [1] 537
#> 
#> $meta_description
#> [1] "Calculus and R based introduction to Biostatistics and Data Science"
#> 
#> $author_string
#> [1] "Ciprian Crainiceanu, Brian Caffo and John Muschelli"
#> 
#> $url
#> [1] "http://leanpub.com/biostatmethods"
#> 
#> $title_page_url
#> [1] "https://s3.amazonaws.com/titlepages.leanpub.com/biostatmethods/original?1526406340"
#> 
#> $minimum_price
#> [1] "9.99"
#> 
#> $suggested_price
#> [1] "20.0"
#> 
#> $image
#> [1] "https://s3.amazonaws.com/titlepages.leanpub.com/biostatmethods/medium?1526406340"
```
