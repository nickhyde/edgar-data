# edgar-data

### EDGAR Documentation

* [How Do I Use EDGAR?](https://www.sec.gov/edgar/quickedgar.htm)
* [Researching Public Companies Through EDGAR: A Guide for Investors](https://www.sec.gov/oiea/Article/edgarguide.html)
* [EDGAR Form Information](https://www.sec.gov/info/edgar/forms/edgform.pdf)
* [EDGAR CIK Lookup Page](https://www.sec.gov/edgar/searchedgar/cik.htm)
* [Executive Compensation Information](https://www.sec.gov/fast-answers/answers-execomphtm.html)
* [SEC Beginner's Guide to Financial Statements](https://www.sec.gov/reportspubs/investor-publications/investorpubsbegfinstmtguidehtm.html)


### Files

* construct_edgar_url.r - Constructs URLs to download Edgar forms given the CIK and SEC Accession Number.


### TSV File Reduction

The tsv files downloaded using the python-edgar tool contain a substantial amount of redundant data.  In this project, we have removed all of the redundant data from the master index, while still allowing the user to obtain the specific form data.  Unfortunately, the size of the master-index.csv file prevents us from including it in the repository;  However, it can be recreated easily enough using the python-edgar tool and some Kung-Fu (ie, Emacs-Fu R-Fu or Python-Fu).  The format of the reduced master data file is shown below.


```
larry@pop-os:~/Github-Public/edgar-data/form-data$ head master-index.csv 
"CIK"|"Form"|"Date"|"Accession_No"
860585|13FCONP|1993-02-11|9999999997-04-035713
880794|NSAR-B|1993-02-26|9999999997-05-050433
926688|13F-HR|1993-02-12|9999999997-05-015654
94673|CERTNYS|1993-02-24|9999999997-05-037760
860585|13FCONP|1993-05-12|9999999997-04-042068
880794|POS AMI|1993-04-28|9999999997-05-050434
926688|13F-HR|1993-05-14|9999999997-05-015657
926688|13FCONP|1993-05-14|9999999997-05-015662
60512|10-Q|1993-08-13|0000060512-94-000005
```

### Related Projects

* https://github.com/edouardswiac/python-edgar
* https://github.com/harelba/q
* https://github.com/Larry-Hignight/Elastic-Stack-Exemplar
