
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("AnnotationHub")
library(AnnotationHub)

# https://github.com/VCCRI/Ularcirc - circRNA after BWA-MEM, CIRI2

install.packages("devtools")
library(devtools)
devtools::install_github("VCCRI/Ularcirc", 
                           build = TRUE, build_vignettes = TRUE, build_opts = c("--no-resave-data", "--no-manual"))

library("Ularcirc")
all_dbs <- Compatible_Annotation_DBs() # This will return all compatible databases

#mmu_dbs <- Compatible_Annotation_DBs(search_term = 'mm10') # returns mm10 compatible databases
install.packages("devtools")
library(devtools)
install.packages('nlme')
library(nlme)
install.packages('MASS')
library(MASS)

install.packages('lattice')
library(lattice)
install.packages('foreign')
library(foreign)


install.packages('boot')
library(boot)


install.packages("vctrs")
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()
BiocManager::install("BiocStyle")
devtools::install_github("VCCRI/Ularcirc", build = TRUE, build_vignettes = TRUE, build_opts = c("--no-resave-data", "--no-manual"))
library("Ularcirc")
all_dbs <- Compatible_Annotation_DBs() # This will return all compatible databases
mmu_dbs <- Compatible_Annotation_DBs(search_term = 'mm10') # returns mm10 compatible databases
# Lets see what is stored in mmu_dbs
mmu_dbs