# vaccine_parameters

library(BCEAweb)
data(Vaccine)

vaccine_mat |> as.data.frame() |> 
  write.csv(file = "./data/vaccine_parameters.csv", row.names = FALSE)
