import pytest
import datetime
import os
import jwt
import time
from unittest.mock import patch
from src.main import regex
from src.main import user_status
from src.main import date_to_string


def test_date_to_string():

    date1 = datetime.datetime(2020,10,10)
    date2 = datetime.datetime(2021,12,9, 15,12,32)
    date3 = datetime.datetime(1990, 1,1, 23,9,12)
    date4 = datetime.datetime(2000, 8,10,23,1,1)
    date5 = datetime.datetime(1990,10,1)

    assert date_to_string(date1) == "20201010"
    assert date_to_string(date2) == "20211209"
    assert date_to_string(date3) == "19900101"
    assert date_to_string(date4) == "20000810"
    assert date_to_string(date5) == "19901001"



def test_regex():
    assert regex("ABCD-EGDS-1234")  != None 
    assert regex("1232435465")      == None
    assert regex("ABCD-CDSC-ASDe")  != None
    assert regex("ABCD-EGaS-1234")  != None
    assert regex("aaaa-aaaa-aaaa")  != None
    assert regex("AAAA=AAAA.AAAA")  == None
    assert regex("AAAA-AAAAAAAA")   == None
    assert regex("AAAA-AAAA-AAAA")  != None
    assert regex("Aa2A-bcAA-AAAA")  != None
    assert regex("AAAA-A233a-AAAA") == None

def test_user_status():
    dum = "not_quite_secret_huh"
    if os.path.exists(f'{os.getenv("HOME")}/.softeng20bAPI.token'):
        os.remove(f'{os.getenv("HOME")}/.softeng20bAPI.token')
    assert user_status("dummy") == ""

    with open(f'{os.getenv("HOME")}/.softeng20bAPI.token', "w") as f:
        token = jwt.encode({'dum' : "time_counter", 'exp' : datetime.datetime.utcnow() + datetime.timedelta(minutes= 60)}, dum, algorithm="HS256")
        f.write("lala-lala-lala:1:3:"+token)

    assert user_status("lala-lala-lala") == "lala-lala-lala:1:3"
    assert user_status("lolo") == "apikeyFail. expired"


    with open(f'{os.getenv("HOME")}/.softeng20bAPI.token', "w") as f:
        f.write("papapapapappa:")

    assert user_status("lololo") == "apikeyFail. expired"
    assert user_status("papapapapappa") == "corrupted.expired"
    assert os.path.exists(f'{os.getenv("HOME")}/.softeng20bAPI.token') == False

    with open(f'{os.getenv("HOME")}/.softeng20bAPI.token', "w") as f:
        token = jwt.encode({'dum' : "time_counter", 'exp' : datetime.datetime.utcnow() + datetime.timedelta(minutes= 60)}, "dum", algorithm="HS256")
        f.write("lala-lala-lala:1:3:"+token)

    assert user_status("lala-lala-lala") == ""
    assert os.path.exists(f'{os.getenv("HOME")}/.softeng20bAPI.token') == False 


    with open(f'{os.getenv("HOME")}/.softeng20bAPI.token', "w") as f:
        token = jwt.encode({'dum' : "time_counter", 'exp' : datetime.datetime.utcnow() + datetime.timedelta(microseconds = 1)}, dum, algorithm="HS256")
        f.write("lala-lala-lala:1:3:"+token)
    
    time.sleep(1)

    with patch("src.main.requests.post") as mocked_post:
        assert user_status("lala-lala-lala") == "expired"
        mocked_post.assert_called_with('http://localhost:8765/evcharge/api/logout', headers={'X-OBSERVATORY-AUTH': 'lala-lala-lala:1:3'})
        assert os.path.exists(f'{os.getenv("HOME")}/.softeng20bAPI.token') == False
