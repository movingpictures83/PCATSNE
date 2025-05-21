library(SINCERA)

input <- function(inputfile) {
   mySC <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {

# do tSNE using PCA components
sc <- doTSNE(mySC, genes=NULL, dims = 1:5, use.fast = T)
pdf(paste(outputfile, "pdf", sep="."))
saveRDS(sc, paste(outputfile, "rds", sep="."))
# plot cells in tSNE spaces
plotRDS(sc, feature.type="tsne")
write.csv(sc@pca$rds, paste(outputfile, "csv", sep="."))
}
