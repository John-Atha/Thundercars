import click
from click.testing import CliRunner
from unittest.mock import patch
import src.main as m
import os
import jwt
import json
import datetime
import time

test_header = {'X-OBSERVATORY-AUTH' : "lala-lala-lala:81:32"}

def test_healtcheck():    
    with patch('src.main.requests.get') as mocked_get:
        runner = CliRunner()
        res = runner.invoke(m.cli, ["healthcheck"])
        
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/admin/healthcheck")


def test_resetsessions():
    with patch('src.main.requests.post') as mocked_post:
        runner = CliRunner()
        res = runner.invoke(m.cli, ["resetsessions"])

        mocked_post.assert_called_with("http://localhost:8765/evcharge/api/admin/resetsessions") 




def test_sessions_per_ev():
    with open(f'{os.getenv("HOME")}/.softeng20bAPI.token', "w") as f:
        token = jwt.encode({'dum' : "time_counter", 'exp' : datetime.datetime.utcnow() + datetime.timedelta(minutes= 60)}, "not_quite_secret_huh", algorithm="HS256")
        f.write("lala-lala-lala:81:32:"+token)
    with patch('src.main.requests.get') as mocked_get:


        runner = CliRunner()
        res = runner.invoke(m.cli, ["sessionsperev","--ev", "5", "--datefrom", "2020-10-10", "--dateto", "2020-12-18", "--format", "csv" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerEV/5/20201010/20201218?format=csv", headers= test_header)
        res = runner.invoke(m.cli, ["sessionsperev","--ev", "5", "--datefrom", "2020-10-10", "--format", "json" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerEV/5/20201010/20250101?format=json", headers= test_header)
        res = runner.invoke(m.cli, ["sessionsperev","--ev", "280", "--dateto", "2010-12-15", "--format", "csv" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerEV/280/19000101/20101215?format=csv", headers= test_header)
        res = runner.invoke(m.cli, ["sessionsperev","--ev", "5", "--format", "csv" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerEV/5/19000101/20250101?format=csv", headers= test_header)
        res = runner.invoke(m.cli, ["sessionsperev","--ev", "5", "--format", "aaaa" , "--apikey", "lala-lala-lala"])
        assert "Error" in res.output

def test_sessions_per_point():
    with patch('src.main.requests.get') as mocked_get:
        runner = CliRunner()
        res = runner.invoke(m.cli, ["sessionsperpoint","--point", "5", "--datefrom", "2020-10-10", "--dateto", "2020-12-18", "--format", "csv" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerPoint/5/20201010/20201218?format=csv", headers = test_header)
        res = runner.invoke(m.cli, ["sessionsperpoint","--point", "5", "--datefrom", "2020-10-10", "--format", "json" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerPoint/5/20201010/20250101?format=json", headers = test_header)
        res = runner.invoke(m.cli, ["sessionsperpoint","--point", "280", "--dateto", "2010-12-15", "--format", "csv" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerPoint/280/19000101/20101215?format=csv", headers = test_header)
        res = runner.invoke(m.cli, ["sessionsperpoint","--point", "5", "--format", "csv" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerPoint/5/19000101/20250101?format=csv", headers = test_header)
        res = runner.invoke(m.cli, ["sessionsperpoint","--point", "5", "--apikey", "lala-lala-lala"])
        assert "Error" in res.output


def test_sessions_per_provider():
    with patch('src.main.requests.get') as mocked_get:

        runner = CliRunner()
        res = runner.invoke(m.cli, ["sessionsperprovider","--provider", "5", "--datefrom", "2020-10-10", "--dateto", "2020-12-18", "--format", "csv" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerProvider/5/20201010/20201218?format=csv", headers=test_header)
        res = runner.invoke(m.cli, ["sessionsperprovider","--provider", "5", "--datefrom", "2020-10-10", "--format", "json" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerProvider/5/20201010/20250101?format=json", headers=test_header)
        res = runner.invoke(m.cli, ["sessionsperprovider","--provider", "280", "--dateto", "2010-12-15", "--format", "csv" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerProvider/280/19000101/20101215?format=csv", headers=test_header)
        res = runner.invoke(m.cli, ["sessionsperprovider","--provider", "5", "--format", "csv" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerProvider/5/19000101/20250101?format=csv", headers=test_header)
        res = runner.invoke(m.cli, ["sessionsperprovider","--provider", "5", "--apikey", "lala-lala-lala"])
        assert "Error" in res.output

def test_sessions_per_station():
    with patch('src.main.requests.get') as mocked_get:

        runner = CliRunner()
        res = runner.invoke(m.cli, ["sessionsperstation","--station", "5", "--datefrom", "2020-10-10", "--dateto", "2020-12-18", "--format", "csv" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerStation/5/20201010/20201218?format=csv",headers=test_header)
        res = runner.invoke(m.cli, ["sessionsperstation","--station", "5", "--datefrom", "2020-10-10", "--format", "json" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerStation/5/20201010/20250101?format=json",headers=test_header)
        res = runner.invoke(m.cli, ["sessionsperstation","--station", "280", "--dateto", "2010-12-15", "--format", "csv" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerStation/280/19000101/20101215?format=csv",headers=test_header)
        res = runner.invoke(m.cli, ["sessionsperstation","--station", "5", "--format", "csv" , "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/SessionsPerStation/5/19000101/20250101?format=csv",headers=test_header)
        res = runner.invoke(m.cli, ["sessionsperstation","--format", "csv" , "--apikey", "lala-lala-lala"])
        assert "Error" in res.output

def test_errors():
    with patch('src.main.requests.get') as mocked_get:

        runner = CliRunner()
        
        mocked_get.return_value.status_code = 400
        res = runner.invoke(m.cli, ["sessionsperstation","--station", "5", "--datefrom", "2020-10-10", "--dateto", "2020-12-18", "--format", "csv" , "--apikey", "lala-lala-lala"])

        assert "Invalid ID." in res.output
        
        mocked_get.return_value.status_code = 402
        res = runner.invoke(m.cli, ["sessionsperev","--ev", "5", "--datefrom", "2020-10-10", "--dateto", "2020-12-18", "--format", "csv" , "--apikey", "lala-lala-lala"])
        assert "no data available" in res.output

        mocked_get.return_value.status_code = 401
        res = runner.invoke(m.cli, ["sessionsperprovider","--provider", "5", "--datefrom", "2020-10-10", "--dateto", "2020-12-18", "--format", "csv" , "--apikey", "lala-lala-lala"])
        assert "Token seems to be invalid" in res.output




def test_login():

    with patch('src.main.requests.post') as mocked_post:

        
        mocked_post.return_value.status_code = 400
        runner = CliRunner()
        res = runner.invoke(m.cli, ["login","--username", "nino", "--password" , "lalala"])
        mocked_post.assert_called_with("http://localhost:8765/evcharge/api/login",  data={'username': 'nino', 'password': 'lalala'})
        assert "Invalid" in res.output

        mocked_post.return_value.status_code = 200

        res = runner.invoke(m.cli, ["login","--username", "nino", "--password"], input="lalala")
        mocked_post.assert_called_with("http://localhost:8765/evcharge/api/login",  data={'username': 'nino', 'password': 'lalala'})





def test_admin_commands():
    runner = CliRunner()
    with patch('src.main.requests.get') as mocked_get:
        res = runner.invoke(m.cli, ["admin", "--healthcheck", "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/admin/healthcheck")
        res = runner.invoke(m.cli, ["admin", "--users", "--username","random_username", "--apikey", "lala-lala-lala"])
        mocked_get.assert_called_with("http://localhost:8765/evcharge/api/admin/users/random_username", headers = test_header)

    with patch('src.main.requests.post') as mocked_post:
        res = runner.invoke(m.cli, ["admin", "--resetsessions", "--apikey", "lala-lala-lala"])
        mocked_post.assert_called_with("http://localhost:8765/evcharge/api/admin/resetsessions")
        res = runner.invoke(m.cli, ["admin", "--usermod", "--username","random", "--passw", "random_no2","--apikey", "lala-lala-lala"])
        mocked_post.assert_called_with("http://localhost:8765/evcharge/api/admin/usermod/random/random_no2", headers = test_header)
        res = runner.invoke(m.cli, ["admin", "--sessionsupd", "--apikey", "lala-lala-lala"])
        assert "--source is required" in res.output

        res = runner.invoke(m.cli, ["admin", "--sessionsupd", "--source", "test.csv", "--apikey", "lala-lala-lala"])
        assert "File doesn't exist" in res.output

        with open("test.cs","w") as f:
            pass

        res = runner.invoke(m.cli, ["admin", "--sessionsupd", "--source", "test.cs", "--apikey", "lala-lala-lala"])
        assert "File does not appear to be in csv format" in res.output

        os.remove("test.cs")
        with open("test.csv","w") as f:
            pass

        mocked_post.return_value.status_code = 400
        res = runner.invoke(m.cli, ["admin", "--sessionsupd", "--source", "test.csv", "--apikey", "lala-lala-lala"])

        assert "documentation" in res.output
        os.remove("test.csv")

def test_logout():
    with patch('src.main.requests.post') as mocked_post:
        runner = CliRunner()
        res = runner.invoke(m.cli, ["logout", "--apikey", "1234567890"])
        assert "XXXX-XXXX" in res.output

        res = runner.invoke(m.cli, ["logout", "--apikey", "lala-lala-lalo"])
        assert "The apikey doesn't seem to be correct." in res.output

        res = runner.invoke(m.cli, ["logout", "--apikey", "lala-lala-lala"])
        mocked_post.assert_called_with("http://localhost:8765/evcharge/api/logout", headers = test_header)

        res = runner.invoke(m.cli, ["logout", "--apikey", "lala-lala-lala"])
        assert "You are aunauthorized to make this call. Please Login first" in res.output

        with open(f'{os.getenv("HOME")}/.softeng20bAPI.token', "w") as f:
            token = jwt.encode({'dum' : "time_counter", 'exp' : datetime.datetime.utcnow() + datetime.timedelta(microseconds=1)}, "not_quite_secret_huh", algorithm="HS256")
            f.write("lala-lala-lala:81:32:"+token)

        time.sleep(0.8)

        res = runner.invoke(m.cli, ["logout", "--apikey", "lala-lala-lala"])
        mocked_post.assert_called_with("http://localhost:8765/evcharge/api/logout", headers = test_header)
        assert os.path.exists(f'{os.getenv("HOME")}/.softeng20bAPI.token') == False

