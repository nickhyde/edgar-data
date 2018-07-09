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


### TSV File Compression

```
larry@pop-os:~/Github-Public/python-edgar/data$ head 2018-QTR1.csv
1000032|BINCH JAMES G|4|2018-02-16|0000913165-18-000034
1000045|NICHOLAS FINANCIAL INC|10-Q|2018-02-09|0001193125-18-037381
1000045|NICHOLAS FINANCIAL INC|4|2018-02-15|0001000045-18-000004
1000045|NICHOLAS FINANCIAL INC|4|2018-03-08|0001000045-18-000005
1000045|NICHOLAS FINANCIAL INC|4|2018-03-20|0001609591-18-000001
1000045|NICHOLAS FINANCIAL INC|8-K|2018-01-09|0001193125-18-007253
1000045|NICHOLAS FINANCIAL INC|8-K|2018-02-05|0001193125-18-032199
1000045|NICHOLAS FINANCIAL INC|8-K|2018-02-07|0001193125-18-034693
1000045|NICHOLAS FINANCIAL INC|8-K|2018-02-20|0001193125-18-049706
1000045|NICHOLAS FINANCIAL INC|SC 13G/A|2018-02-12|0001104659-18-008485


larry@pop-os:~/Github-Public/python-edgar/data$ head 2018-QTR1.tsv 
1000032|BINCH JAMES G|4|2018-02-16|edgar/data/1000032/0000913165-18-000034.txt|edgar/data/1000032/0000913165-18-000034-index.html
1000045|NICHOLAS FINANCIAL INC|10-Q|2018-02-09|edgar/data/1000045/0001193125-18-037381.txt|edgar/data/1000045/0001193125-18-037381-index.html
1000045|NICHOLAS FINANCIAL INC|4|2018-02-15|edgar/data/1000045/0001000045-18-000004.txt|edgar/data/1000045/0001000045-18-000004-index.html
1000045|NICHOLAS FINANCIAL INC|4|2018-03-08|edgar/data/1000045/0001000045-18-000005.txt|edgar/data/1000045/0001000045-18-000005-index.html
1000045|NICHOLAS FINANCIAL INC|4|2018-03-20|edgar/data/1000045/0001609591-18-000001.txt|edgar/data/1000045/0001609591-18-000001-index.html
1000045|NICHOLAS FINANCIAL INC|8-K|2018-01-09|edgar/data/1000045/0001193125-18-007253.txt|edgar/data/1000045/0001193125-18-007253-index.html
1000045|NICHOLAS FINANCIAL INC|8-K|2018-02-05|edgar/data/1000045/0001193125-18-032199.txt|edgar/data/1000045/0001193125-18-032199-index.html
1000045|NICHOLAS FINANCIAL INC|8-K|2018-02-07|edgar/data/1000045/0001193125-18-034693.txt|edgar/data/1000045/0001193125-18-034693-index.html
1000045|NICHOLAS FINANCIAL INC|8-K|2018-02-20|edgar/data/1000045/0001193125-18-049706.txt|edgar/data/1000045/0001193125-18-049706-index.html
1000045|NICHOLAS FINANCIAL INC|SC 13G/A|2018-02-12|edgar/data/1000045/0001104659-18-008485.txt|edgar/data/1000045/0001104659-18-008485-index.html
```

### Related Projects

* https://github.com/edouardswiac/python-edgar
* https://github.com/harelba/q
* https://github.com/Larry-Hignight/Elastic-Stack-Exemplar
