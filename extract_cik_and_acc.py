import glob
if __name__ == '__main__':
  print ("Starting ...\n")
  for finame in glob.glob('./*.tsv'):
    glob.sys.stdout.write("Working on file [%s]" % finame)
    line_count = 0
    with open(finame ,'r') as fhin:
       foname =finame[:-4]+'.csv'
       if glob.os.path.isfile(foname):
            print("\nfile %s already exists. Aborting." % foname)
            glob.sys.exit(1)
       with open(foname,'w+') as fhout:
         for line in fhin.readlines():
           line_count += 1
           if line_count % 10000 == 0: glob.sys.stdout.write('.')
           words = line.split('|')
           if words[4][0:11] != words[5][0:11] or words[5][0:11] != "edgar/data/":
              print "\nedgar/data/ missing in word[4] %s or word[5] %s. Fatal error. Terminating" % (words[4],words[5])
              glob.sys.exit(1)
           fhout.write('|'.join([words[0],words[2],words[3],words[4][12+len(words[0]):len(words[4]) - 4]]) + '\n')
    glob.sys.stdout.write('.line count %d\nConverted file to [%s]\n' % (line_count, foname))
  print("Finished converting files.")
