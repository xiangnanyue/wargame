
import argparse

parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('--files', default="found1")

args = parser.parse_args()
filelist = args.files.split(" ")

filelist = ["found1", "found2", "found3"]

letters = dict()
word3 = dict()
word2 = dict()
for file in filelist:
    with open(file, "r") as f:
        lis = f.read().replace(" ", "")
        for l in lis:
            if letters.get(l) is not None:
                letters[l] += 1
            else:
                letters[l] = 1
        for i in range(len(lis)):
            word = lis[i:i+3]
            if word3.get(word) is not None:
                word3[word] += 1
            else:
                word3[word] = 1
            i += 1
        for i in range(len(lis)):
            word = lis[i:i+2]
            if word2.get(word) is not None:
                word2[word] += 1
            else:
                word2[word] = 1
            i += 1

print sorted(letters.items(), key=lambda x:x[1])
print sorted(word3.items(), key=lambda x:x[1])
print sorted(word2.items(), key=lambda x:x[1])

