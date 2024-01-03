#' Title Start a Tex File
#'
#' @param tex_file_name a character
#'
#' @return TRUE, if succeed
#' @export
#'
start_tex <- function(tex_file_name = "my_paper.tex")
{# copy paper_template.tex
 file.copy(
    from = system.file("extdata/paper_template.tex", package = "BookStarter"),
    to = sprintf("./%s", tex_file_name),
    overwrite = TRUE,
    copy.mode = TRUE
  )
}
