#' Start Book
#'
#' @return TRUE, if successfully start a book
#' @export
#'
start_book <- function()
{# create docs folder
 if(!dir.exists("./docs")) dir.create("./docs")

 # copy .nojekyll into ./docs
 file.copy(
    from = system.file("extdata/.nojekyll", package = "BookStarter"),
    to = "./docs",
    overwrite = TRUE,
    recursive = TRUE,
    copy.mode = TRUE
  )
 # copy _bookdown.yml
 file.copy(
   from = system.file("extdata/_bookdown.yml", package = "BookStarter"),
   to = ".",
   recursive = TRUE,
   copy.mode = TRUE
  )
 # copy index.Rmd
 file.copy(
   from = system.file("extdata/index.Rmd", package = "BookStarter"),
   to = ".",
   recursive = TRUE,
   copy.mode = TRUE
 )
}
