import random
import string
import os

path1 = "C:/Users/atha/Desktop/softeng/projectCode/backend/dbFillingSQL"
filename1 = "passwords"
filename1 = os.path.join(path1, filename1 + ".txt")
f1 = open(filename1, "a", encoding='utf-8')


letters = list(string.ascii_letters)
digits = list(string.digits)
symbols = ["!", "@", "#", "$", "_"]
all = letters * 4 + digits  * 4 + symbols

res = []
def password(n):
    global res
    for i in range(n):
        temp = ''
        p1 = random.randrange(30,50)
        for j in range(p1):
            if random.randrange(10)>=5:
                temp = temp + (random.choice(all))
        res.append(temp)
    f1.write(str(res))

password(12000)