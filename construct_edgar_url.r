##
## This file contains two functions for constructing URLs based on the CIK and SEC Accession No.
##
## This filing data is available in the tsv index files.  These functions allow us to remove a
## substantial amount of duplicate, and unnecessary, data from the index files.  The first function,
## construct_filing_detail_url, as the name suggests, returns the URL for the filing detail page.
##
## The second function, construct_submission_text_url, returns a URL that contains the complete submission
## as a text file.  Internally, with the exception of some plain text at the beginning of the file, this is
## actually an html file.  Unfortunately, this appears to be the only file for which I am able to construct
## a download URL; It appears that companies can freely name the other files in the form submission.

## --------------------------------------------------------------------------------------------------------------------

construct_filing_detail_url <- function(cik, sec_accession_num, html = TRUE) {
  url <- paste('https://www.sec.gov/Archives/edgar/data', cik, sec_accession_num, sep = "/")
  if (html) paste0(url, "-index.html") else paste0(url, ".txt")
}

construct_submission_text_url <- function(cik, sec_accession_num) {
  paste0(paste('https://www.sec.gov/Archives/edgar/data', cik, sec_accession_num, sep = "/"), ".txt")
}


## Usage Examples -----------------------------------------------------------------------------------------------------

# 1000032|BINCH JAMES G|4|2018-02-16|0000913165-18-000034
construct_filing_detail_url(cik = 1000032, sec_accession_num = '0000913165-18-000034')
construct_submission_text_url(cik = 1000032, sec_accession_num = '0000913165-18-000034')

# 100591|ARGAN INC|8-K|2018-03-28|0001104659-18-020536
construct_filing_detail_url(cik = 100591, sec_accession_num = '0001104659-18-020536')
construct_submission_text_url(cik = 100591, sec_accession_num = '0001104659-18-020536')

# 1006249|BlackRock Fund Advisors|13F-NT|2018-02-09|0001086364-18-000017
construct_filing_detail_url(cik = 1006249, sec_accession_num = '0001086364-18-000017')
construct_submission_text_url(cik = 100591, sec_accession_num = '0001086364-18-000017')

# 1000209|MEDALLION FINANCIAL CORP|10-K|2018-03-14|0001193125-18-082402
construct_filing_detail_url(cik = 1000209, sec_accession_num = '0001193125-18-082402')
construct_submission_text_url(cik = 1000209, sec_accession_num = '0001193125-18-082402')

# 1000097|KINGDON CAPITAL MANAGEMENT, L.L.C.|SC 13G/A|2018-02-14|0000919574-18-001765
construct_filing_detail_url(cik = 1000097, sec_accession_num = '0000919574-18-001765')
construct_submission_text_url(cik = 1000097, sec_accession_num = '0000919574-18-001765')
