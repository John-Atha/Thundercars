import random
import string

import os
import random
path3 = "C:/Users/atha/Desktop/softeng/projectCode/backend/dbFillingSQL"
filename3 = "station_owners"
filename3 = os.path.join(path3, filename3 + ".sql")
f3 = open(filename3, "a", encoding='utf-8')

passwords = [ 'iaUrW4W6f6h6N93V', 'bsMjvPnWwsTLWWdAE3P',]

emails = ["Capri16895596@yahoo.com", "Larry32882628@gmail.com"]

surnames = [ "Ingram", "Whitehead"]

birth_dates = [ "1977-11-20", "1975-6-26"]

# to be filled with the useradrres IDs after they are imported into the db
AddressList = []
for i in range(1, 4135):
    AddressList.append(i)
    AddressList.append(i)
    AddressList.append(i)

def findName(mail):
    mail = str(mail)
    name = ''
    for c in mail:
        if c not in string.digits:
            name = name + c
        else:
            break
    return name

def makeUsername(name):
    if random.randrange(10)>5:
        for j in range(1, 2):
            name = name + random.choice([".", "_", "-"])
    name = name + str(random.randrange(100, 99999))
    return name

for i in range(2):
    tempPass = '"' + passwords[i] + '"'
    tempEmail = '"'+ emails[i] + '"'
    tempLastName = '"' + surnames[i] + '"'
    tempDate = '"' + birth_dates[i] + '"'
    Fname =  findName(tempEmail) 
    tempFirstName = Fname + '"'
    tempUsername = makeUsername(Fname) + '"'
    tempAddress = random.choice(AddressList)
    tempAddressID = '"' + str(tempAddress) + '"'
    AddressList.remove(tempAddress)
    f3.write("INSERT INTO `db`.`user`(`date_of_birth`, `email_addr`, `first_name`, `last_name`, `password`, `username`, `address_id`) VALUES(" +
            tempDate + ", " +
            tempEmail + ", " +
            tempFirstName + ", " +
            tempLastName + ", " +
            tempPass + ", " +
            tempUsername + ", " +
            str(tempAddressID) + ");\n")
