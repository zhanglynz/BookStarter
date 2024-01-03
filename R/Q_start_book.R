#' Start Quarto Book
#'
#' @param author author of the book, a character
#' @param title title of the book, a character
#' @return TRUE, if successfully start a book
#' @export
#'
q_start_book <- function(author = "Lingyun Zhang",
                         title = "My New Book")
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
 fn <- system.file("extdata/_quarto.yml", package = "BookStarter")
 fr <- file(fn, open = "rt")

 the_lines <- readLines(fr, n = -1)

 the_lines[6] <- gsub('My book', title, the_lines[6])
 the_lines[7] <- gsub('Lingyun Zhang', author, the_lines[7])

 write(the_lines, file = "./_quarto.yml")
 close(fr)
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
