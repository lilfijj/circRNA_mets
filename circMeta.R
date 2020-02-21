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

res=circJuncDE(CIRI.files[c(1,2,3,4)],designs,circ.method='CIRI',DE.method='pois.ztest')
tmp=getCLR(res)
x1=tmp$x1
n1=tmp$n1
x2=tmp$x2
n2=tmp$n2

res1=circCLRDE(x1,n1,x2,n2,DE.method='wald',is.shrink=F)
sum(res1$fdr<fdr.level)
res2=circCLRDE(x1,n1,x2,n2,DE.method='wald',is.shrink=T)
sum(res2$fdr<fdr.level)
res3=circCLRDE(x1,n1,x2,n2,DE.method='lr',is.shrink=F)
sum(res3$fdr<fdr.level)
res4=circCLRDE(x1,n1,x2,n2,DE.method='lr',is.shrink=T)
sum(res4$fdr<fdr.level)