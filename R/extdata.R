
#' Smoking Cessation Example - Parameters
#'
#' This CSV file contains simulated parameter data for the Smoking Cessation example.
#'
#' @format A CSV file with 500 rows and 4 variables:
#' \describe{
#'   \item{p1}{Simulations for the probability of quitting in intervention 1}
#'   \item{p2}{Simulations for the probability of quitting in intervention 2}
#'   \item{p3}{Simulations for the probability of quitting in intervention 3}
#'   \item{p4}{Simulations for the probability of quitting in intervention 4}
#' }
#' @source Generated for package examples
#' @examples
#' \dontrun{
#' csv_file <- system.file("extdata", "smoking_parameters.csv", package = "BCEAweb")
#' data <- read.csv(csv_file)
#' head(data)
#' }
#' @name Smoking_parameters
#' @docType data
NULL


#' Smoking Cessation Example - Results
#'
#' This CSV file contains simulated outputs for the Smoking Cessation example.
#'
#' @format A CSV file with 500 rows and 4 variables:
#' \describe{
#'   \item{e.No.treatment}{Simulations for the effects in intervention 1}
#'   \item{c.No.treatment}{Simulations for the costs in intervention 1}
#'   \item{e.Self.help}{Simulations for the effects in intervention 2}
#'   \item{c.Self.help}{Simulations for the costs in intervention 2}
#'   \item{e.Individual.counselling}{Simulations for the effects in intervention 3}
#'   \item{c.Individual.counselling}{Simulations for the effects in intervention 3}
#'   \item{e.Group.counselling}{Simulations for the effects in intervention 4}
#'   \item{c.Group.counselling}{Simulations for the costs in intervention 4}
#' }
#' @source Generated for package examples
#' @examples
#' \dontrun{
#' csv_file <- system.file("extdata", "Smoking_results.csv", package = "BCEAweb")
#' data <- read.csv(csv_file)
#' head(data)
#' }
#' @name Smoking_results
#' @docType data
NULL


#' Vaccine Example - Results
#'
#' This CSV file contains simulated outputs for the Vaccine example.
#'
#' @format A CSV file with 500 rows and 2 variables:
#' \describe{
#'   \item{e.Status.Quo}{Simulations for the effects in intervention 1}
#'   \item{c.Status.Quo}{Simulations for the costs in intervention 1}
#'   \item{e.Vaccination}{Simulations for the effects in intervention 2}
#'   \item{c.Vaccination}{Simulations for the costs in intervention 2}
#' }
#' @source Generated for package examples
#' @examples
#' \dontrun{
#' csv_file <- system.file("extdata", "Vaccine_results.csv", package = "BCEAweb")
#' data <- read.csv(csv_file)
#' head(data)
#' }
#' @name Vaccine_results
#' @docType data
NULL