# smoking_parameters

library(BCEAweb)
data(Smoking)

pi |> as.data.frame() |> 
  (\(x) setNames(x, paste0("p", 1:ncol(x))))() |> 
  write.csv(file = "./data/smoking_parameters.csv", row.names = FALSE)
