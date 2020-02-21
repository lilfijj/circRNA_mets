if(!require("devtools")) {install.packages("devtools")}
library(devtools)

library(devtools)
install.packages('rlang')
install_github("lichen-lab/circMeta")
library(circMeta)
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("BSgenome.Hsapiens.UCSC.hg38")
library(GenomicRanges)

library(circMeta)
CIRI.files=c(
  "ED1_primary.ciri",
  "ED1_femur.ciri",
  "ED1_brain.ciri",
  "ED2_primary.ciri",
  "ED2_brain.ciri"
)
designs=c(0,0,0,1,1)
fdr.level=0.05

res=circJuncDE(CIRI.files[c(1,2,3,4,5)],designs,circ.method='CIRI',DE.method='pois.ztest')
new_seqlevels <- vector()
keepSeqlevels(chr1_KI270711v1_random, new_seqlevels, pruning.mode="coarse")


tmp=getCLR(res)
x1=tmp$x1
n1=tmp$n1
x2=tmp$x2
n2=tmp$n2
