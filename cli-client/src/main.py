import click
import requests
import json
import datetime
import os
import re
import jwt


secr_key = "not_quite_secret_huh"
base_url = "http://localhost:8765/evcharge/api"

class bcolors:
    HEADER = '\033[95m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'

inv_apikey = f'{bcolors.FAIL}Token seems to be invalid. Please login again.{bcolors.ENDC}'


def user_status(apikey):
    if not os.path.exists(f'{os.getenv("HOME")}/.softeng20bAPI.token'):
        return ""

    with open(f'{os.getenv("HOME")}/.softeng20bAPI.token', "r") as f: 
        line = f.readline()
        helper = line.split(":")


        if apikey != helper[0]:
            print(bcolors.WARNING + "The apikey doesn't seem to be correct." + bcolors.ENDC)
            return "apikeyFail. expired"
        

        if len(helper) != 4:
            print(bcolors.FAIL + "Login file seems to be corrupted. Please login again." + bcolors.ENDC)
            os.remove(f'{os.getenv("HOME")}/.softeng20bAPI.token')
            return "corrupted.expired"

        try:
            line = helper[-1]
            data = jwt.decode(line, secr_key, algorithms=["HS256"]) 
        
        except  jwt.exceptions.ExpiredSignatureError:
            print(bcolors.WARNING + "Token expired. Please login again." + bcolors.ENDC)
            head = helper[0] +":"+ helper[1] +":" + helper[2]
            header = {"X-OBSERVATORY-AUTH"  : head}
            try:
                resp = requests.post(base_url + "/logout", headers=header)
                if resp.status_code == 401:
                    print(inv_apikey)
                    return

            
            except requests.exceptions.ConnectionError:
                print(bcolors.FAIL + "Servers are currently down. Please try again later." + bcolors.ENDC)
                return
            
            os.remove(f'{os.getenv("HOME")}/.softeng20bAPI.token')
            return "expired"
        
        except jwt.exceptions.DecodeError:

            os.remove(f'{os.getenv("HOME")}/.softeng20bAPI.token')
            return ""

        return helper[0] +":"+ helper[1] +":" + helper[2]


def date_to_string(date):
    mon = str(date.month)
    day = str(date.day)

    if len(mon) < 2:
        mon = "0" + mon

    if len(day) < 2:
        day = "0" + day

    return str(date.year) + mon + day

def regex(apikey):
    pattern = re.compile("(\w{4}-){2}\w{4}")
    return pattern.search(apikey)


def sessionsper(arg1, arg2, datefrom,dateto, format, apikey):

    if not regex(apikey):
        print(bcolors.FAIL + 'API key does not match the pattern.(XXXX-XXXX-XXXX, where X is letter or number)' + bcolors.ENDC)
        return

    status = user_status(apikey)

    if not status:
        print(bcolors.FAIL + "Please login first!" + bcolors.ENDC)
        return
    
    if status == "apikeyprob":
        return

    if  "expired" in status:
        return

    header = {"X-OBSERVATORY-AUTH"  : status}
    try:
        data = requests.get(f'{base_url}/{arg1}/{arg2}/{date_to_string(datefrom)}/{date_to_string(dateto)}?format={format}', headers = header)
    except requests.exceptions.ConnectionError:
        print(bcolors.FAIL + "Servers are currently down. Please try again later." + bcolors.ENDC)
        return
    if data.status_code == 402:
        print(bcolors.WARNING + 'There are currently no data available.' + bcolors.ENDC)
    elif data.status_code == 401:
        print(inv_apikey)
    elif data.status_code == 400:
        print(bcolors.FAIL + 'Invalid ID.' + bcolors.ENDC)
    elif data.status_code == 200:
        if format == 'json':  
            print(json.dumps(json.loads(data.text), indent=4))
        else:
            print(data.text)


@click.group()
def cli():
    
    '''
    This command line interface was part of our project in Software Engineering class, during
    the 7th semester of Electrical and Computer Engineering class of National Technical University
    of Athens.

    '''
    pass


@cli.command(help = 'Specify your username(required) with --username flag. You will be prompted to enter your password')    
@click.option('--username', '-U', help = 'Register user Username',
                required=True)
@click.option('--password', '-P',required = True, help='Password option')
def login(username, password):
    
    data = {
        "username" : username,
        "password" : password,
    }
    try:

        data = requests.post(f'{base_url}/login', data=data); 

    except requests.exceptions.ConnectionError:
        print(bcolors.FAIL + "Servers are currently down. Please try again later." + bcolors.ENDC)
        return      
    
    if data.status_code >= 400 and data.status_code < 500:
        print(bcolors.FAIL + "Invalid Username or Password" + bcolors.ENDC)
    else:
        try:
            data = data.json()
            if data["Role"]!= "Admin":
                print(bcolors.WARNING + "Sorry, this command line interface is available only for system admins" + bcolors.ENDC)
                return
            creds = f'{data["Token"]}:{data["Id"]}:1'
            token = jwt.encode({'dum' : "time_counter", 'exp' : datetime.datetime.utcnow() + datetime.timedelta(minutes= 60)}, secr_key, algorithm="HS256")
            
            with open(f'{os.getenv("HOME")}/.softeng20bAPI.token', "w") as f:
                f.write(creds+":"+token) 
            print(bcolors.OKGREEN + "Logged in successfully. Welcome!" + bcolors.ENDC)
            print("Your ApiKey is:  " + bcolors.HEADER + data["Token"] + bcolors.ENDC)
            print("You have to use it for your calls with --apikey parameter")
        except:
            print(bcolors.FAIL + "Internal server error. Please try again." + bcolors.ENDC)


@cli.command(help = 'Logout')
@click.option('--apikey', required = True, help= 'Specify the apikey we provided you')
def logout(apikey):

    if not regex(apikey):
        print(bcolors.FAIL + 'API key does not match the pattern.(XXXX-XXXX-XXXX, where X is letter or number)' + bcolors.ENDC)
        return
    stat = user_status(apikey)


    if 'expired' in stat:
        return
    elif stat:
        header = {"X-OBSERVATORY-AUTH"  : stat}
        try:
            resp = requests.post(base_url+"/logout",headers=header)
        except requests.exceptions.ConnectionError:
            print(bcolors.FAIL + "Servers are currently down. Please try again later." + bcolors.ENDC)
            return
        os.remove(f'{os.getenv("HOME")}/.softeng20bAPI.token')
        print(bcolors.OKGREEN + "Successfully logged out!" + bcolors.ENDC)
    
    else:
        print(bcolors.FAIL + "You are aunauthorized to make this call. Please Login first" + bcolors.ENDC)

@cli.command(help = 'Get list of charging processes for specific charging point')
@click.option('--point',required=True, type=int )
@click.option('--datefrom', default='1900-01-01', type=click.DateTime())
@click.option('--dateto', default = '2025-01-01', type=click.DateTime())
@click.option('--format', type=click.Choice(['json', 'csv'])
            , required = True)
@click.option('--apikey', required = True)
def SessionsPerPoint(point, datefrom, dateto, format, apikey):
    sessionsper('SessionsPerPoint', point, datefrom,dateto, format,apikey)

@cli.command(help = 'Get list of charging processes for specific station')
@click.option('--station',required=True, type=int )
@click.option('--datefrom', default='1900-01-01', type=click.DateTime())
@click.option('--dateto', default = '2025-01-01', type=click.DateTime())
@click.option('--format', type=click.Choice(['json', 'csv'])
            , required = True)
@click.option('--apikey', required = True)
def SessionsPerStation(station, datefrom, dateto, format, apikey):
    sessionsper('SessionsPerStation', station, datefrom,dateto, format, apikey)

@cli.command(help = 'Get list of charging processes for specific Electic Vehicle')
@click.option('--ev',required=True, type=int )
@click.option('--datefrom', default='1900-01-01', type=click.DateTime())
@click.option('--dateto', default = '2025-01-01', type=click.DateTime())
@click.option('--format', type=click.Choice(['json', 'csv'])
            , required = True)
@click.option('--apikey', required = True)
def SessionsPerEV(ev, datefrom, dateto, format, apikey):
    sessionsper('SessionsPerEV', ev, datefrom,dateto, format, apikey)
    


@cli.command(help = 'Get list of charging processes from specific current provider')
@click.option('--provider',required=True, type=int )
@click.option('--datefrom', default='1900-01-01', type=click.DateTime())
@click.option('--dateto', default = '2025-01-01', type=click.DateTime())
@click.option('--format', type=click.Choice(['json', 'csv'])
            , required = True)
@click.option('--apikey', required = True)
def SessionsPerProvider(provider, datefrom, dateto, format, apikey):
    sessionsper('SessionsPerProvider', provider, datefrom,dateto, format, apikey)

@cli.command()
def healthcheck():

    try:
        resp = requests.get(f'{base_url}/admin/healthcheck')
    except requests.exceptions.ConnectionError:
        print(bcolors.FAIL + "Servers are currently down. Please try again later." + bcolors.ENDC)
        return

    print(json.dumps(json.loads(resp.text), indent=4))


@cli.command()
def resetsessions():
    
    try:
        resp = requests.post(f'{base_url}/admin/resetsessions')
    except requests.exceptions.ConnectionError:
        print(bcolors.FAIL + "Servers are currently down. Please try again later." + bcolors.ENDC)
        return

    print(json.dumps(json.loads(resp.text), indent=4))    



@cli.command(help = 'Admin commands for managing the software.')
@click.option('--usermod', help = 'Add or update a user. Specify user with --username and password with --passw', is_flag = True)
@click.option('--username', help = 'Specify username to add or update. Required with --usermod and --users')
@click.option('--passw', help = 'Specify password for the updated user. Required with --usermod')
@click.option('--users', help = 'Print information about the user with username specified from --username parameter', is_flag = True)
@click.option('--sessionsupd', is_flag = True, help = 'Add Charging Process sessions from csv file, specified with --source flag')
@click.option('--source', help = 'Specify csv file with the sessions to insert.')
@click.option('--healthcheck', help='Perform a healthcheck to ensure servers are running smoothly', is_flag = True)
@click.option('--resetsessions', help = 'Delete all saved charging process sessions', is_flag = True)
@click.option('--apikey', help = "Specify your API key. If you don't have one, make sure to get from our website", required = True)
def Admin(usermod, username, passw, users, sessionsupd, source, healthcheck, resetsessions, apikey):
    
    if not regex(apikey):
        print(bcolors.FAIL + 'API key does not match the pattern.(XXXX-XXXX-XXXX, where X is letter or number)' + bcolors.ENDC)
        return
    
    status = user_status(apikey)
    


    if 'expired' in status:
        return
    if not status:
        print(bcolors.WARNING + "You need to be admin to make this call. Please login first!" + bcolors.ENDC)
        return
    

    header = {"X-OBSERVATORY-AUTH"  : status}

    try:

        if usermod:
            if users or sessionsupd or healthcheck or resetsessions:
                print(bcolors.FAIL + "You can only include one of users, sessionsupd, healthcheck, resetsessions and usermod" + bcol.ENDC)
                return

            if not (username and passw):
                print(bcolors.FAIL + "Parameters --username and --passw are required" + bcolors.ENDC)
                return
            
            resp = requests.post(f'{base_url}/admin/usermod/{username}/{passw}', headers = header)
            if resp.status_code == 401:
                print(inv_apikey)
            else:
                print(bcolors.OKGREEN + "User updated!" + bcolors.ENDC)


        if users:
            
            if usermod or sessionsupd or healthcheck or resetsessions:
                print(bcolors.FAIL + "You can only include one of users, sessionsupd, healthcheck, resetsessions and usermod" + bcol.ENDC)
                return

            if not username:
                print(bcolors.FAIL + "Parameter --username is required" + bcolors.ENDC)
                return

            resp = requests.get(f'{base_url}/admin/users/{username}', headers = header)
            if resp.status_code == 401:
                print(inv_apikey)
                return
            elif resp.status_code == 402:
                resp = requests.get(f'{base_url}/admin/stationowners/{username}', headers = header)
                if resp.status_code == 402:
                    print(bcolors.WARNING + f'User {username} not found' + bcolors.ENDC )
                    return
            print(json.dumps(json.loads(resp.text), indent=4))
            
        if healthcheck:
            
            if usermod or sessionsupd or users or resetsessions:
                print(bcolors.FAIL + "You can only include one of users, sessionsupd, healthcheck, resetsessions and usermod" + bcol.ENDC)
                return

            resp = requests.get(f'{base_url}/admin/healthcheck')


            print(json.dumps(json.loads(resp.text), indent=4))

        if resetsessions:
            
            if usermod or sessionsupd or users or healthcheck:
                print(bcolors.FAIL + "You can only include one of users, sessionsupd, healthcheck, resetsessions and usermod" + bcol.ENDC)
                return

            resp = requests.post(f'{base_url}/admin/resetsessions')
            print(json.dumps(json.loads(resp.text), indent=4))
        
        if sessionsupd:
            if usermod or resetsessions or users or healthcheck:
                print(bcolors.FAIL + "You can only include one of users, sessionsupd, healthcheck, resetsessions and usermod" + bcol.ENDC)
                return

            if not source:
                print(bcolors.FAIL + "Parameter --source is required" + bcolors.ENDC)
                return

            if not os.path.exists(source):
                print(bcolors.FAIL + "File doesn't exist. Get sure you have added the correct path." + bcolors.ENDC)
                return

            if source.split('.')[-1] != 'csv':
                print(bcolors.FAIL + "File does not appear to be in csv format." + bcolors.ENDC)
                return

            myfiles = {"file":(source,open(source,"rb"),'application-type')}
            resp = requests.post(f'{base_url}/admin/system/sessionsupd', files=myfiles, headers = header)
            if resp.status_code == 400:
                print(bcolors.FAIL + "Please read the documentation for the correct csv format" +bcolors.ENDC)
                return
            else:
                print(json.dumps(json.loads(resp.text), indent=4))

    except requests.exceptions.ConnectionError:
        print(bcolors.FAIL + "Servers are currently down. Please try again later." + bcolors.ENDC)
        return


if __name__ == '__main__':
    cli()