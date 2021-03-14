import hashlib


with open("station_owners.sql", "r") as f:
    for line in f:
        line = line.split('"')
        res = hashlib.md5(bytes(line[9], encoding='ascii'))
        line[9] = res.hexdigest()
        for x in line:
            if (x!=line[len(line)-1]):
                print(x , end='"')
            else:
                print(x, end="")

