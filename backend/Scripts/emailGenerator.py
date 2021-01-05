import random
import os
nameList = ["James","John"]
orgList = ["gmail", "yahoo", "mail", "windowslive"]

path1 = "C:/Users/atha/Desktop/softeng/projectCode/backend/dbFillingSQL"
filename1 = "emails"
filename1 = os.path.join(path1, filename1 + ".txt")
f1 = open(filename1, "a", encoding='utf-8')


def email(n):

    f1.write("[")
    for i in range(n):
        number = random.randrange(1, 100000000)
        name = random.choice(nameList) + str(number)
        org = "@" + random.choice(orgList) + ".com"
        if i!=n-1:
            f1.write('"' + name + org + '", ')
        else:
            f1.write('"' + name + org + '"]')

email(7662)