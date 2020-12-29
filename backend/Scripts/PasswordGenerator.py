import random
import string

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
    print(res)

password(1200)