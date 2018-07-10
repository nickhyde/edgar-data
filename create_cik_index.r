## This script creates the CIK index file using the tsv files
setwd('/home/larry/Github-Public/python-edgar/data/')

filenames <- list.files('.', pattern = '*.tsv')
for (filename in filenames) {
  print(sprintf("Processing file: %s", filename))
  write_index_file(filename)
}

write_index_file <- function(filename) {
  x <- read.csv(filename, header = F, sep = '|')
  names(x)[1:2] <- c('CIK', 'Corporation')
  x2 <- unique(x[ , 1:2])
  x2 <- x2[order(x2$CIK), ]
  write.csv(x2, paste0('../cik-index-', filename), row.names = F)
}
