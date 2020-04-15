install.packages("devtools")
library(devtools)
devtools::install_github("VCCRI/Ularcirc", build = TRUE, build_vignettes = TRUE, build_opts = c("--no-resave-data", "--no-manual"))
install.packages("yaml")
install.packages("digest")
library(digest)
library(yam1)
BiocManager::install("BiocStyle")

library("Ularcirc")
all_dbs <- Compatible_Annotation_DBs() # This will return all compatible databases
hg_38 <- Compatible_Annotation_DBs(search_term = 'hg38') # returns mm10 compatible databases
# Lets see what is stored in mmu_dbs
hg_38
# Now lets download all of the above databases
if (!requireNamespace("BiocManager", quietly = TRUE))
install.packages("BiocManager")   # Make sure R is looking at bioconductor repository
BiocManager::install(c(hg_38))
# To start Ularcirc shiny app
library('Ularcirc')
Ularcirc()
