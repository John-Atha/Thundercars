# stations IDs -> 1 ... 7662
# spots IDs -> 1 ... 503

import random
import os

path3 = "C:/Users/atha/Desktop/softeng/project/data/"
filename3 = "charging_station_spots"
filename3 = os.path.join(path3, filename3 + ".sql")
f3 = open(filename3, "a", encoding='utf-8')


def myPrint(string, end='\n'):
    global f3
    res = string + end
    f3.write(res)

SpotsNumber = [1] * 5 + [2] * 5 + [3] * 7 + [4] * 8 + [5] * 10 + [6] * 9 + [7] * 7 + [8] * 8 + [9] * 9 + [10] * 3

goal = set({})
SpotIDs = []
for j in range(1, 504):
    SpotIDs = SpotIDs + ([j])
    goal.add(j)
x = random.randrange(1, 503)
SpotIDs.append(x)


StatList = []

for i in range(1, 7662):
    n = random.choice(SpotsNumber)
    here = set({})
    StatList.append(here)
    for j in range(n):
        myPrint("INSERT INTO `db`.`charging_station_spots`(`charging_station_id`, `charging_spot_id`, `quantity`, `quantity_available`, `quantity_operational`) VALUES(", end="")
        myPrint("%s" %i, end=", ")
        if j==0 and len(goal)>0:
            SpotID = random.choice(tuple(goal))
            goal.remove(SpotID)
        else:
            if len(SpotIDs)>0:
                SpotID = random.choice(SpotIDs)
            else:
                print("jemeiname")
                break
        while SpotID in here:
            SpotID = random.choice(SpotIDs)
        myPrint("%s" %SpotID, end=", ")
        q = random.randrange(3, 7)
        myPrint("%s" %q, end=", ")
        qAv = random.randrange(0, q)
        myPrint("%s" %qAv, end=", ")
        qOp = random.randrange(qAv, q+1)
        myPrint("%s" %qOp, end=");\n")
        here.add(SpotID)