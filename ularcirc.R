if (!require("devtools")) install.packages("devtools")
library(devtools)
library(usethis)
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("BiocStyle")

devtools::install_github("VCCRI/Ularcirc", 
                           build = TRUE, build_vignettes = TRUE, build_opts = c("--no-resave-data", "--no-manual"))

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("AnnotationHub")
library("AnnotationHub")


library("Ularcirc")
library(BiocFileCache)
AnnotationHub(localHub = FALSE)
AnnotationHub()
install.packages("Ularcic")
BiocManager::install("Ularcirc")

library('Ularcirc')
BiocManager::install("BSgenome.Hsapiens.UCSC.hg38")
library('BSgenome.Hsapiens.UCSC.hg38')
BiocManager::install("TxDb.Hsapiens.UCSC.hg38.knownGene")
library('TxDb.Hsapiens.UCSC.hg38.knownGene')



library('BSgenome')
library('httpuv')
library('AnnotationHub')
# Prepare a dataframe of all compatible annotation databases
## Not run:  compatible_DBs_human <- Compatible_Annotation_DBs("Hsapiens")

# Example of how to find a relevant database and load the relevant databases:
# This example find hg38 databases
idx <- grep(pattern="hg38", x= compatible_DBs_human[,"genome"])

if (!requireNamespace("BiocManager", quietly=TRUE))
  install.packages("BiocManager")
BiocManager::install(c(compatible_DBs[idx,]))

## End(Not run)

install.packages("httr")
library(httr)
library("Ularcirc")
all_dbs <- Compatible_Annotation_DBs() # This will return all compatible databases
mmu_dbs <- Compatible_Annotation_DBs(search_term = 'mm10') # returns mm10 compatible databases
# Lets see what is stored in mmu_dbs
mmu_dbs


use_proxy(url, port = NULL, username = NULL, password = NULL,
          auth = "basic")



