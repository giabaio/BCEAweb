.bcea_env <- new.env(parent = emptyenv())

#' @importFrom grDevices pdf
NULL
.onLoad <- function(libname, pkgname) {
  op <- options()
  op.bcea <- list(
    scipen = 10
  )
  toset <- !(names(op.bcea) %in% names(op))
  if (any(toset)) options(op.bcea[toset])
  
  # Set pdf device to default to encoding = "CP1250"
  options(device = function(...) pdf(..., encoding = "CP1250"))
  
  invisible()
}

#' @title .onAttach
#' @description prints out a friendly reminder message to the user
#' @inheritParams base .onAttach
#' @return NULL
#' @noRd
.onAttach <- function(libname, pkgname) {
  packageStartupMessage("The BCEAweb version loaded is: ", utils::packageVersion("BCEAweb"))
}