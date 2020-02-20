if(!require("devtools")) {install.packages("devtools")}
library(devtools)

library(devtools)
install.packages('rlang')
install_github("lichen-lab/circMeta")
library(circMeta)
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("BSgenome.Hsapiens.UCSC.hg38")
