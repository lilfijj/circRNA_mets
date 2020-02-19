if(!require("org.Hs.eg.db")) {install.packages("org.Hs.eg.db")}
library("org.Hs.eg.db")
if(!require("tidyr")) {install.packages("tidyr")}
library("tidyr")
if(!require("BiocManager")) {install.packages("BiocManager")}
library("BiocManager")
if(!require("ReactomePA")) {install.packages("ReactomePA")}
library("ReactomePA")
BiocManager::install("biomaRt")
library(biomaRt)


ciri_26 <- read.delim('CIRI output/26_CIRI.txt') # 249 detected circular RNAs
ciri_26_split <-separate_rows(ciri_26, gene_id, sep = ",")   # multiple gene_ids mapped to each circRNA, split rows --> 1168


library('biomaRt')
useMart(biomaRt, dataset, host="www.ensembl.org",
        path="/biomart/martservice", port, archive=FALSE, ensemblRedirect = NULL, version, verbose = FALSE)

mart <- useDataset("hsapiens_gene_ensembl", useMart("ensembl"))
genes <- ciri_26_split$gene_id
g_list <- getBM(filter = "ensembl_transcript_id",
                attributes = c("ensembl_transcript_id", "entrezgene_id", values = genes, mart = mart))
merge(ciri_26_split, g_list, by.x="gene", by.y="ensembl_transcript_id")


ciri_26_split<-ciri_26_split[,-11] # remove column 11



mart <- useMart('ENSEMBL_MART_ENSEMBL') #start
mart <- useDataset('hsapiens_gene_ensembl', mart)
#ensemble = useMart("ensembl", dataset = "hsapiens_gene_ensembl")

annots <- getBM(mart=mart, attributes = c('ensembl_transcript_id', 'entrezgene_id'), filter = 'ensembl_transcript_id', values = ciri_26_split$gene_id, uniqueRows = TRUE)



annots <- annots[!duplicated(annots[,1]),]
ciri_26_split$gene_id <- ciri_26_split$gene_id[which(rownames(ciri_26_split$gene_id) %in% annots[,1]),]
annots <- annots[which(annots[,1] %in% rownames(ciri_26_split$gene_id)),]
ciri_26_split$gene_id <- ciri_26_split$gene_id[match(annots[,1], rownames(ciri_26_split$gene_id)),]
rownames(ciri_26_split$gene_id) <- make.names(annots[,2], unique = TRUE)
rownames(ciri_26_split$gene_id) <- gsub('X', '', rownames(ciri_26_split$gene_id))