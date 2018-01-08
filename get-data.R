library("quantmod")
library("zoo")
library("tibble")

symbol <- "SIE.DE"
dat <- getSymbols(symbol, env = NULL, from = "2005-01-01", to = "2008-07-01")
toSave <- tibble(Date = index(dat), Price = drop(coredata(dat[, paste0(symbol, ".Close")])))

saveRDS(toSave, "data.RDS")
