# vaccine_results
rm(list = ls())

library(BCEAweb)
data(Vaccine)

m <- BCEA::bcea(eff, cost, ref = 1, Kmax = 500, interventions = treats)
ec = data.frame("e" = m$e, "c" = m$c)
ec = ec[matrix(1:ncol(ec), nrow = 2, byrow = T) |> c()]

ec |> write.csv(file = "./data/vaccine_results.csv", row.names = FALSE)
