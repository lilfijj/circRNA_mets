

BiocManager::install("AnnotationHub")
library(AnnotationHub)
install.packages("digest")
# https://github.com/VCCRI/Ularcirc - circRNA after BWA-MEM, CIRI2



if(!require("devtools")) {install.packages("devtools")}
library(devtools)
devtools::install_github("VCCRI/Ularcirc", 
                           build = TRUE, build_vignettes = TRUE, build_opts = c("--no-resave-data", "--no-manual"))

library("Ularcirc")
all_dbs <- Compatible_Annotation_DBs(localHub=FALSE) # This will return all compatible databases


setAnnotationHubOption("PROXY","https://username:password@proxy:port")

ah = AnnotationHub()


mmu_dbs <- Compatible_Annotation_DBs(search_term = 'hg38') # returns mm10 compatible databases



if(!require("vctrs")) {install.packages("vctrs")}
library('vctrs')
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("BiocStyle")
library("BiocStyle")


devtools::install_github("VCCRI/Ularcirc", build = TRUE, build_vignettes = TRUE, build_opts = c("--no-resave-data", "--no-manual"))
library("Ularcirc")
all_dbs <- Compatible_Annotation_DBs() # This will return all compatible databases
mmu_dbs <- Compatible_Annotation_DBs(search_term = 'mm10') # returns mm10 compatible databases
# Lets see what is stored in mmu_dbs
mmu_dbs