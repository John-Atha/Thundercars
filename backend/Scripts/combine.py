import os

path1 = "C:/Users/atha/Desktop/softeng/project/data/"
filename1 = "basic"
filename1 = os.path.join(path1, filename1 + ".sql")
f1 = open(filename1, "r", encoding='utf-8')

path2 = "C:/Users/atha/Desktop/softeng/project/data/"
filename2 = "extra"
filename2 = os.path.join(path1, filename2 + ".sql")
f2 = open(filename2, "r", encoding='utf-8')

path3 = "C:/Users/atha/Desktop/softeng/project/data/"
filename3 = "combined"
filename3 = os.path.join(path3, filename3 + ".sql")
f3 = open(filename3, "a", encoding='utf-8')

while True:
    line1 = f1.readline()
    line2 = f2.readline()
    newLine = line1 + line2
    f3.write(newLine)

