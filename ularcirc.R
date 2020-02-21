install.packages("devtools")
library(devtools)
devtools::install_github("VCCRI/Ularcirc", 
                           build = TRUE, build_vignettes = TRUE, build_opts = c("--no-resave-data", "--no-manual"))
if (!require("digest")) install.packages("digest")
library("digest")
