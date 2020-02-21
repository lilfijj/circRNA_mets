
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("AnnotationHub")
library(AnnotationHub)


install.packages("devtools")
library(devtools)


# https://github.com/VCCRI/Ularcirc - circRNA after BWA-MEM, CIRI2

devtools::install_github("VCCRI/Ularcirc", 
                           build = TRUE, build_vignettes = TRUE, build_opts = c("--no-resave-data", "--no-manual"))

library("Ularcirc")

all_dbs <- Compatible_Annotation_DBs() # This will return all compatible databases

#mmu_dbs <- Compatible_Annotation_DBs(search_term = 'mm10') # returns mm10 compatible databases
