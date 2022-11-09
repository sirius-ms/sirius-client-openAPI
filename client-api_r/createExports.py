from os import listdir
from os.path import isfile, join

mypath = "./generated/"
onlyfiles = [f.split('.')[0] for f in listdir(mypath+"R") if isfile(join(mypath+"R", f))]
with open(mypath+'exports.txt', 'w') as f:
    for file in onlyfiles:
        f.write("export("+file+")")
        f.write('\n')