start <- function(pkg){
  npkg <- pkg[!(pkg %in% installed.packages()[,"Package"])]
  if (length(npkg))
    install.packages(npkg, dependencies = TRUE)
  lapply(pkg, require, character.only=TRUE)
}

pkgs <- c("rafalib", "ggplot2", "doParallel", "devtools")
start(pkgs)

source("http://www.bioconductor.org/biocLite.R")

biocLite("org.Hs.eg.db")

biocLite(c("IlluminaHumanMethylation450kmanifest", 
           "IlluminaHumanMethylation450kanno.ilmn12.hg19",
           "airway",
           "minfi", 
           "BSgenome.Hsapiens.UCSC.hg19",
           "bsseq",
           "BiocParallel",
           "AnnotationHub",
           "cummeRbund",
           "DESeq2",
           "DEXSeq",
           "GenomicRanges",
           "GenomicFeatures",
           "GenomicAlignments",
           "limma",
           "bumphunter",
           "org.Hs.eg.db",
           "pasilla",
           "pasillaBamSubset",
           "Rsamtools",
           "Rsubread",
           "TxDb.Dmelanogaster.UCSC.dm3.ensGene"))



# rna ---------------------------------------------------------------------

# http://www.ebi.ac.uk/ena/data/view/SRR1039508
