#' BCEAweb
#' 
#' Launches the web-app 
#' 
#' @param e A matrix containing the simulations for the effectiveness
#' variable (with number of simulation rows and number of interventions
#' columns). Defaults at NULL, which means the user has to load their 
#' own values using the web-interface
#' @param c A matrix containing the simulations for the cost
#' variable (with number of simulation rows and number of interventions
#' columns). Defaults at NULL, which means the user has to load their 
#' own values using the web-interface
#' @param parameters A matrix with the simulations for all the relevant
#' model parameters. Defaults at NULL, which means the user has to load 
#' their own values using the web-interface
#' @param launch.browser Defaults to `TRUE`, but can be specified to open inside
#' Rstudio (e.g. `launch.browser=rstudioapi::viewer`)
#' @param ... Additional parameters. 
#' @author Gianluca Baio
#' @seealso [`bcea`](https://gianluca.statistica.it/software/bcea/)
#' @references Baio, G., Dawid, A. P. (2011). Probabilistic Sensitivity
#' Analysis in Health Economics.  Statistical Methods in Medical Research
#' doi:10.1177/0962280211419832.
#' 
#' Baio G. (2012). Bayesian Methods in Health Economics. CRC/Chapman Hall,
#' London
#' @keywords Health economic evaluation, Expected value of information
#' @import BCEA
#' 
#' @examples
#' \dontrun{
#' data(Vaccine)
#' BCEAweb(eff,cost,vaccine_mat)
#' }
#' @export 
#' 
BCEAweb <- function(e=NULL, c=NULL, parameters=NULL, launch.browser=TRUE, ...) {
  exArgs <- list(...)
  appDir <- system.file("BCEAweb", package = "BCEAweb")
  
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `BCEAweb`.", call. = FALSE)
  }
  
  # make the possible inputs available to the webapp!
  # First uses BCEA::CreateInputs to process the simulations for the model parameters
  #  (this means the user can pass a BUGS, JAGS, Stan, or xls object and BCEA will know what to do. Also eliminates need with further dependencies).
  if (!is.null(parameters)){parameters <- BCEA::createInputs(parameters,print_is_linear_comb = FALSE)$mat} 
  if (!is.null(e)){e <- as.matrix(e)}
  if (!is.null(c)){c <- as.matrix(c)}

  # run webapp
  invisible(launch(e, c, parameters, launch.browser=launch.browser, ...))
}


#' Internal launch function 
#'
#' @param e A matrix containing the simulations for the effectiveness
#' variable (with number of simulation rows and number of interventions
#' columns). Defaults at NULL, which means the user has to load their 
#' own values using the web-interface
#' @param c A matrix containing the simulations for the cost
#' variable (with number of simulation rows and number of interventions
#' columns). Defaults at NULL, which means the user has to load their 
#' own values using the web-interface
#' @param parameters A matrix with the simulations for all the relevant
#' model parameters. Defaults at NULL, which means the user has to load 
#' their own values using the web-interface
#' @param launch.browser Defaults to `TRUE`, but can be specified to open inside
#' Rstudio (e.g. `launch.browser=rstudioapi::viewer`)
#' @param ... Additional parameters. 
#'
#' @returns runApp
#'
launch <- function(e, c, parameters, launch.browser=TRUE, ...) {
  if(!isTRUE(requireNamespace("shinythemes", quietly=TRUE))) {
    stop("You need to install the R package 'shinythemes'. Please run in your R terminal:\n install.packages('shinythemes')")
  }
  if(!isTRUE(requireNamespace("shiny", quietly=TRUE))) {
    stop("You need to install the R package 'shiny'. Please run in your R terminal:\n install.packages('shiny')")
  }

  .bcea_env$.e <- e
  .bcea_env$.c <- c
  .bcea_env$.parameters <- parameters
  
  on.exit(.bcea_env$.e <- NULL, add = TRUE)
  on.exit(.bcea_env$.c <- NULL, add = TRUE)
  on.exit(.bcea_env$.parameters <- NULL, add = TRUE)
  
  shiny::runApp(system.file("BCEAweb", package = "BCEAweb"), 
                display.mode = "normal",
                quiet = TRUE,
                launch.browser = launch.browser,
                ...)
}
