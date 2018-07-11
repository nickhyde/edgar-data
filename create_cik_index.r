## This script creates the CIK index file using the tsv files
## Note: The CIK numbers are not padded with leading zeroes as the EDGAR URLs use non-padded values

process_index_file <- function(filename) {
  print(sprintf("Processing file: %s", filename))
  x <- read.csv(filename, header = F, sep = '|', colClasses = c('integer', rep('character', 5)))[ , 1:2]
  names(x) <- c('CIK', 'Corporation')
  unique(x)
}

# Process the tsv files
setwd('~/Github-Public/python-edgar/data/')
filenames <- list.files('.', pattern = '*.tsv')
x <- do.call(rbind, lapply(filenames, process_index_file))
x <- unique(x)
x <- x[order(x$CIK), ]
head(x)

# Write the CIK index to disk
setwd('../../edgar-data/index-data/')
write.csv(x, file = 'cik-index.csv', row.names = FALSE)
