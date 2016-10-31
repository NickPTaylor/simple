#' Launch \code{reverse_string} shiny application.
#'
#' This is a wrapper function for launching the 'application' shiny app in this
#' package.
#'
#' @param ... Arugments to \code{shiny::runApp()}.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' launch_application()
#' }
launch_application <- function(...) {
    shiny::runApp(appDir = system.file("application", package = "simple"),
                  ...)
}

#' Reverse a character string.
#'
#' @param x A character string.
#'
#' @return The character string \code{x} reversed.
#' @export
#'
#' @examples
#' reverse_string("hello")
#' reverse_string("hello world")
reverse_string <- function(x) {
    x <- strsplit(x, "")[[1]]
    x <- rev(x)
    x <- paste0(x, collapse = "")
}
