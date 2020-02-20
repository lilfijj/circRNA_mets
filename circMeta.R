if(!require("devtools")) {install.packages("devtools")}
library(devtools)

library(devtools)
install.packages('rlang')
install_github("lichen-lab/circMeta")
library(circMeta)
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("BSgenome.Hsapiens.UCSC.hg38")
circJuncDE(files,designs, circ.method=c('findcirc','CIRCexplorer','CIRI'), DE.method=c('pois.ztest','DESeq2','edgeR','pois.glm','nb.glm'), gene=NULL,gexon=NULL, cutoff=2,sf=TRUE)