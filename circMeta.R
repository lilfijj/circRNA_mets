if(!require("devtools")) {install.packages("devtools")}
library(devtools)

install.packages('rlang')
install_github("lichen-lab/circMeta")
library(circMeta)
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("BSgenome.Hsapiens.UCSC.hg38")


ciri_26 <- read.delim('CIRI output/26_CIRI.txt') # 249 detected circular RNAs

#3 re-do CIRI and upload file ******************************************************** PICK UP HERE :))))
res=circJuncDE(ciri_26,designs,circ.method='CIRI',DE.method='pois.ztest')
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