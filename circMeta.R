if(!require("devtools")) {install.packages("devtools")}
library(devtools)

library(devtools)
install.packages('rlang')
install_github("lichen-lab/circMeta")
library(circMeta)
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("BSgenome.Hsapiens.UCSC.hg38")


ciri_26 <- read.delim("26_ciri_ud.ciri", header = TRUE, stringsAsFactors = TRUE, row.names = 1)

circJuncDE(ciri_26,designs, circ.method=c('findcirc','CIRCexplorer','CIRI'),
           DE.method=c('pois.ztest','DESeq2','edgeR','pois.glm','nb.glm'), 
           gene=NULL,gexon=NULL, cutoff=2,sf=TRUE)

head(ciri_26)
