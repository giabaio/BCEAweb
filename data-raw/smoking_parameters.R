# smoking_parameters
rm(list = ls())

library(BCEAweb)
data(Smoking)

pi_post |> as.data.frame() |> 
  (\(x) setNames(x, paste0("p", 1:ncol(x))))() |> 
  write.csv(file = "./data/smoking_parameters.csv", row.names = FALSE)
