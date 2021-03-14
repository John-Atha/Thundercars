from io import SEEK_END
import os
import random
import datetime
message = '''INSERT INTO `db`.`charging_process`(`user_id`, `vehicle_id`, `charging_station_id`, `charging_spot_id`, `charging_program`, `connection_time`, `disconnect_time`, `done_charging_time`, `timezone`, `kwh_delivered`, `cost`, `payment_way`, `rating`) VALUES('''
f3 = None

def myPrint(string, end='\n'):
    global f3
    res = string + end
    f3.write(res)

def randomConnectionTime(begin):
    return begin + datetime.timedelta(days=random.randrange(5, 250), hours=random.randrange(0, 24), minutes=random.randrange(0, 1200), seconds=random.randrange(0, 60))

def randomDoneChargingTime(ConnTime):
    return ConnTime + datetime.timedelta(hours=random.randrange(1, 6), minutes=random.randrange(0, 60), seconds=random.randrange(0, 60))

def randomDisConnectTime(DoneChargingTime):
    return DoneChargingTime + datetime.timedelta(hours=random.randrange(0, 3), minutes=random.randrange(0, 60), seconds=random.randrange(0, 60))

start = datetime.datetime(2019, 1, 1, 00, 00, 00)

def TimestampGen(begin):
    #end = datetime.datetime(2021, 1, 1, 00, 00, 00)
    times = []
    newCon = randomConnectionTime(begin)
    newDoneCharging = randomDoneChargingTime(newCon)
    newDisconnectTime = randomDisConnectTime(newDoneCharging)
    times = times + [newCon, newDoneCharging, newDisconnectTime]
    return times

def kWhDelAndCost(program, timesList):
    Con = timesList[0]
    Done = timesList[1]
    DisCon = timesList[2]
    kWhTimestamp = Done-Con
    ExtraCostTimestamp = DisCon-Done
    if program=="slow":
        program=5
        RevCost=7.5
    elif program=="medium":
        program=6.67
        RevCost=7.05
    else:
        program=8.57
        RevCost=6.31
    minutes = round((kWhTimestamp.seconds)/60)
    hours = round(minutes/60)
    kWh = round(program * hours, 2)
    cost = round(kWh/RevCost + ((ExtraCostTimestamp.seconds)/7200), 2)
    return [kWh, cost]

def RatingCompute():
    rating1 = []
    x=3
    while x<=5:
       rating1.append(x)
       x=round(x+0.1, 1) 
    rating2 = []
    x=1
    while x<=5:
        rating2.append(x)
        x=round(x+0.1, 1)
    ratingList = rating1 * 10 + rating2
    return random.choice(ratingList)

def fix_line(line, prevUser, prevDisconnectTime):
    global start
    line = line[:-1]
    l = line.split(" ")
    l.append(random.choice(['"slow"', '"medium"', '"fast"']))
    if int(l[0])==prevUser:
        times = TimestampGen(prevDisconnectTime)
    else:
        times = TimestampGen(start)
    timesStr = list(map(lambda x: '"'+str(x)+'"', times)) 
    l = l + timesStr
    l.append('"local"')
    l2 = kWhDelAndCost(l[4], times)
    l = l + l2
    payment_way = random.choice(['"Cash"']*2 + ['"Paypal"'] +  ['"Credit Card"']*5)
    l.append(payment_way)
    rating = RatingCompute()
    l.append(rating)
    myPrint(message, end="")
    myPrint(', '.join(list(map(str, l))) + ");")
    return times[2]


path2 = "C:/Users/atha/Desktop/softeng/projectCode/backend/dbFillingSQL/"
filename2 = "charging_process2"
filename2 = os.path.join(path2, filename2 + ".txt")
f2 = open(filename2, "r", encoding='utf-8')

path3 = "C:/Users/atha/Desktop/softeng/projectCode/backend/dbFillingSQL/"
filename3 = "charging_process2"
filename3 = os.path.join(path3, filename3 + ".sql")
f3 = open(filename3, "a", encoding='utf-8')

line = f2.readline()
prevUser=0
prevTime=start
while line:
    prevTime = fix_line(line, prevUser, prevTime)
    l = line.split(" ")
    prevUser = int(l[0])
    line = f2.readline()

