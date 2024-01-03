#' Start Book
#'
#' @param title book's title, a character
#' @param author book's author, a character
#' @return TRUE, if successfully start a book
#' @export
#'
start_book <- function(title = "My Book",
                       author = "Lingyun Zhang")
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
 fn <- system.file("extdata/index.Rmd", package = "BookStarter")
 fr <- file(fn, open = "rt")

 the_lines <- readLines(fr, n = -1)
 the_lines[3] <- gsub('Uderstanding Survey Sampling', title, the_lines[3])
 the_lines[4] <- gsub('Lingyun Zhang', author, the_lines[4])

 write(the_lines, file = "./index.Rmd")
 close(fr)
}
