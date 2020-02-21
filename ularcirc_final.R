
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("AnnotationHub")
library(AnnotationHub)

# Need to establish internet connection in R
# Made either using Internet Protocol (IP) address =
# a numerical label assigned to each device connected to a computer network that uses the Internet Protocol for communication
