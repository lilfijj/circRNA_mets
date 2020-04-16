install.packages("yaml")
install.packages("digest")
library(digest)
library(yam1)
BiocManager::install("BiocStyle")
# Now lets download all of the above databases
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")   # Make sure R is looking at bioconductor repository
BiocManager::install(c(hg_38))

# __________   4/15/2020 start from below __________________________________________________________________________


# perl CIRI2.pl -I file.sam -O output.txt -F hg38.fa -A human.gtf


library(devtools)
devtools::install_github("VCCRI/Ularcirc", build = TRUE, build_vignettes = TRUE, build_opts = c("--no-resave-data", "--no-manual"))
library("Ularcirc")
if (!requireNamespace("BiocManager", quietly=TRUE))
  install.packages("BiocManager")

dontrun { 
  BiocManager::install(c("BSgenome.Hsapiens.UCSC.hg38",         # Genome; enables sequence analysis
                         "TxDb.Hsapiens.UCSC.hg38.knownGene",    # Transcript database
                         "org.Hs.eg.db"))                        # Annotation database
}

all_dbs <- Compatible_Annotation_DBs() # This will return all compatible databases
hg_38 <- Compatible_Annotation_DBs(search_term = 'hg38') # returns mm10 compatible databases
hg_38 # Lets see what is stored in mmu_dbs

Ularcirc() # To start Ularcirc shiny app

# ------------------RUN IN APP


# UPLOAD 4 file types into ULARCIC APP
# set parameters:
# - 
# STAR output files:
#     1) _Chimeric.out.junction
#     2) _ReadsPerGene.out.tab
#     3) _SJ.out.tab

# CIRI2 output file:
#     4) .ciri

# run samples:

#     5P - primary
#     E  - brain






