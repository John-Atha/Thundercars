# FIX THE PATHS

import os
import random
f3 = None
path1 = "C:/Users/atha/Desktop/softeng/project/data/"
filename1 = "poi2"
filename1 = os.path.join(path1, filename1 + ".json")
f1 = open(filename1, "r", encoding='utf-8')

path3 = "C:/Users/atha/Desktop/softeng/project/data/"
filename3 = "stations"
filename3 = os.path.join(path3, filename3 + ".sql")
f3 = open(filename3, "a", encoding='utf-8')

def myPrint(string, end='\n'):
    global f3
    res = str(string) + end
    f3.write(res)

def pick_provider(country_id):
    if country_id==1:
        return	random.choice([146,147])
    elif country_id==2:
        return	random.choice([148, 149, 150, 151, 152])
    elif country_id==7:
        return	random.choice([1, 2])
    elif country_id==8:
        return(3)
    elif country_id==18:
        return	random.choice([4, 5])
    elif country_id==23:
        return	random.choice([6, 7, 8])
    elif country_id==24:
        return(9)
    elif country_id==26:
        return	random.choice([10, 11, 12, 13, 14, 15,])
    elif country_id==36:
        return	random.choice([16, 17,	18])
    elif country_id==44:
        return	random.choice([19, 20, 21, 22])
    elif country_id==50:
        return	random.choice([23, 24])
    elif country_id==53:
        return(25)
    elif country_id==58:
        return	random.choice([26, 27, 28])
    elif country_id==60:
        return(29)
    elif country_id==63:
        return(30)
    elif country_id==64:
        return(31)
    elif country_id==65:
        return	random.choice([32, 33, 34])
    elif country_id==70:
        return	random.choice([35, 36,	37])
    elif country_id==79:
        return	random.choice([38, 39])
    elif country_id==80:
        return	random.choice([40, 41, 42])
    elif country_id==87:
        return	random.choice([43, 44, 45, 46])
    elif country_id==90:
        return	(47)
    elif country_id==106:
        return	random.choice([48, 49, 50, 51, 52])
    elif country_id==107:
        return(53)
    elif country_id==108:
        return(57)
    elif country_id==111:
        return(58)
    elif country_id==112:
        return	random.choice([54, 55, 56])
    elif country_id==114:
        return	random.choice([59, 60, 61, 62])
    elif country_id==118:
        return(63)
    elif country_id==120:
        return(123)
    elif country_id==121:
        return(124)
    elif country_id==125:
        return	random.choice([64, 65])
    elif country_id==126:
        return(66)
    elif country_id==131:
        return	random.choice([67, 68, 69])
    elif country_id==134:
        return(92)
    elif country_id==135:
        return	random.choice([70, 71])
    elif country_id==146:
        return(72)
    elif country_id==156:
        return	random.choice([73, 74, 75, 76, 77])
    elif country_id==158:
        return(78)
    elif country_id==159:
        return	random.choice([79, 80, 81])
    elif country_id==161:
        return	random.choice([82, 83, 84, 85, 86, 87])
    elif country_id==164:
        return	random.choice([88, 89, 90, 91])
    elif country_id==170:
        return	random.choice([93, 94, 95, 96])
    elif country_id==177:
        return	random.choice([97, 98, 99, 100])
    elif country_id==179:
        return	random.choice([101, 102, 103])
    elif country_id==180:
        return	random.choice([104, 105, 106, 107, 108, 109, 110])
    elif country_id==185:
        return	random.choice([111, 112, 113, 114])
    elif country_id==199:
        return	random.choice([115, 116, 117])
    elif country_id==202:
        return(118)
    elif country_id==205:
        return	random.choice([119, 120, 121])
    elif country_id==208:
        return(122)
    elif country_id==208:
        return(122)
    elif country_id==210:
        return(125)
    elif country_id==211:
        return	random.choice([126, 127])
    elif country_id==216:
        return	random.choice([128, 129, 130, 131])
    elif country_id==217:
        return	random.choice([132, 133])
    elif country_id==219:
        return(134)
    elif country_id==221:
        return(135)
    elif country_id==222:
        return	random.choice([136, 137, 138])
    elif country_id==229:
        return	random.choice([139, 140, 141])
    elif country_id==235:
        return	random.choice([142, 143, 144, 145])
    elif country_id==237:
        return(153)
    else:
        return random.choice([128, 129, 130, 131])

addressList = [4122,4123,18522] 

def to_string(lista):
    return ''.join(lista)

def find_country(line):
    country_id =""
    l = list(line)
    index=0
    size = len(line)
    index=0
    for index in range(size):
        if to_string(l[index:(index+12)])=='"CountryID":':
            for c in l[(index+12):]:
                if c!=',':
                    country_id = country_id + str(c)
                else:
                    attr=0
                    break
    return int(country_id)

def fix_station(line):
    l = list(line)
    index=0
    size = len(line)
    country_id=find_country(line)
    attr=1
    myPrint("INSERT INTO `db`.`charging_station`(`uuid`, `operator_id`, `usage_type_id`, `address_id`, `comments`, `date_last_confirmed`, `status_type_id`, `date_last_status_update`, `date_created`, `submission_status_id`, `rating`, `cost_per_kwh`, `current_provider_id`) VALUES(", end="")
    for index in range(size):
        if attr==1:
            if to_string(l[index:(index+5)])=='UID":':
                for c in l[(index+5):]:
                    if c==',':
                        myPrint(c + " ", end="")
                        attr=2
                        break
                    else:
                        myPrint(c, end="")
            else:
                pass 
        
        elif attr==2:
            if to_string(l[index:(index+13)])=='"OperatorID":':
                for c in l[(index+13):]:
                    if c==',':
                        myPrint(c + " ", end="")
                        attr=3
                        break
                    else:
                        myPrint(c, end="")
            else:
                pass
        
        elif attr==3:
            if to_string(l[index:(index+14)])=='"UsageTypeID":':
                for c in l[(index+14):]:
                    if c==',':
                        myPrint(c + " ", end="")
                        attr=4
                        break
                    else:
                        a = c
                        if c!='n' and c!='u' and c!='l' :
                            a = int(c)+1
                        myPrint(str(a), end="")

        elif attr==4:
            if to_string(l[index:(index+20)])=='"AddressInfo":{"ID":':
                myPrint(random.choice(addressList), end=", ")
                attr=5
                
        elif attr==5:
            if to_string(l[index:(index+18)])=='"GeneralComments":':
                for c in l[(index+18):]:
                    if c=='}':
                        myPrint(", ", end="")
                        attr=7
                        break
                    else:
                        myPrint(c, end="")
        
        
        elif attr==7:
            if to_string(l[index:(index+8)])=='"$date":':
                for c in l[(index+8):]:
                    if c=='}':
                        myPrint(", ", end="")
                        attr=7.1
                        break
                    else:
                        myPrint(c, end="")
            elif to_string(l[index:(index+24)])=='"DateLastConfirmed":null':
                myPrint("null, ", end="")
                attr=7.1
            

        elif attr==7.1:
            if to_string(l[index:(index+16)])=='"StatusTypeID":0':
                myPrint('1, ', end="")
                attr=8
            elif to_string(l[index:(index+15)])=='"StatusTypeID":':
                for c in l[(index+15):]:
                    if c==',':
                        myPrint(", ", end="")
                        attr=8
                        break
                    else:
                        myPrint(c, end="")


        elif attr==8:
            if to_string(l[index:(index+8)])=='"$date":':
                for c in l[(index+8):]:
                    if c=='}':
                        myPrint(", ", end="")
                        attr=9
                        break
                    else:
                        myPrint(c, end="")
            elif to_string(l[index:(index+28)])=='"DateLastStatusUpdate":null':
                myPrint("null, ", end="")
                attr=9
        
        elif attr==9:
            if to_string(l[index:(index+8)])=='"$date":':
                for c in l[(index+8):]:
                    if c=='}':
                        myPrint(", ", end="")
                        attr=10
                        break
                    else:
                        myPrint(c, end="")
        
        elif attr==10:
            #if to_string(l[index:(index+25)])=='"SubmissionStatusTypeID":':
            #    for c in l[(index+25):]:
            #        if c==',':
            #            myPrint(", ", end="")
            #            attr=11
            #            break
            #        else:
            #            myPrint(c, end="")
            l1 = [1]
            l2 = [200]
            l3 = [100]
            l3 = l2 * 200 + l1 + l3 * 10 + l2 * 50
            res = random.choice(l3) 
            myPrint("%s, " %res, end="")
            attr=11            



        elif attr==11:
            myPrint(str(round(random.uniform(3, 5), 2)), end="")
            myPrint(", ", end="")
            attr=12
        
        elif attr==12:
            myPrint(str(round(random.uniform(0.16, 0.25), 2)), end="")
            myPrint(", ", end="")
            attr=13

        elif attr==13:
            res=pick_provider(country_id)
            myPrint(str(res), end=");\n")
            attr=14
            break

index=0
while index<7662:
    line1 = f1.readline()
    fix_station(line1)
    #f3.write(newLine)
    index = index + 1