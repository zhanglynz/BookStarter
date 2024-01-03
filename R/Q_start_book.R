#' Start Quarto Book
#'
#' @return TRUE, if successfully start a book
#' @export
#'
q_start_book <- function()
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
 # copy _quarto.yml
 file.copy(
   from = system.file("extdata/_quarto.yml", package = "BookStarter"),
   to = ".",
   recursive = TRUE,
   copy.mode = TRUE
  )
 # copy index.qmd
 file.copy(
   from = system.file("extdata/index.qmd", package = "BookStarter"),
   to = ".",
   recursive = TRUE,
   copy.mode = TRUE
 )
 # copy theme-dark.scss
 file.copy(
   from = system.file("extdata/theme-dark.scss", package = "BookStarter"),
   to = ".",
   recursive = TRUE,
   copy.mode = TRUE
 )
}
