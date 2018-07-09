fin  = open('1994-QTR1.tsv','r')
fout = open('1994-QTR1.csv','w+')
for line in fin.readlines():
  line1 = line.split('|')
  line2 = '|'.join([line1[0],line1[2],line1[3],line1[4][12+len(line1[0]):len(line1[4]) - 4]])
  fout.write(line2+'\n')
