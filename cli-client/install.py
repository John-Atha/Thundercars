#!/usr/bin/env python3

import os

class bcolors:
    HEADER = '\033[95m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'

def main():
    ex_code = 0
    print('''
████████╗██╗░░██╗██╗░░░██╗███╗░░██╗██████╗░███████╗██████╗░░█████╗░░█████╗░██████╗░░██████╗
╚══██╔══╝██║░░██║██║░░░██║████╗░██║██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝
░░░██║░░░███████║██║░░░██║██╔██╗██║██║░░██║█████╗░░██████╔╝██║░░╚═╝███████║██████╔╝╚█████╗░
░░░██║░░░██╔══██║██║░░░██║██║╚████║██║░░██║██╔══╝░░██╔══██╗██║░░██╗██╔══██║██╔══██╗░╚═══██╗
░░░██║░░░██║░░██║╚██████╔╝██║░╚███║██████╔╝███████╗██║░░██║╚█████╔╝██║░░██║██║░░██║██████╔╝
░░░╚═╝░░░╚═╝░░╚═╝░╚═════╝░╚═╝░░╚══╝╚═════╝░╚══════╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░
    ''')

    print('''
This software is part of our Electric Vehicle Charge project for the Software Engineering Class
at the School of Electrical and Computer Engineering of National Technical University of Athens.
It is meant to be used only by system admins and it's purpose is to monitor the
database and the server.

We highly recommend you to install it in virtual environment.

Team Members:
    Athanasiou Ioannis
    Karavaggelis Athanasios
    Mantzoutas Andreas
    Tsitsis Antonios 
        ''')

    inp = input("Do you wish to run tests before building?(yes/no)\n")
    
    if ( "y" in inp.lower()  or not inp ):
        ex_code = os.system("python3 setup.py test")
    print("\n\n\n")
    
    if ex_code:
        print(bcolors.WARNING + "Some tests seem to have failed." + bcolors.ENDC)
    
    inp = input("Do you want to proceed building the application?\n")
    
    if ( "y" in inp.lower()  or not inp ):
        ex_code = os.system("pip install -e .")      
        print("\n\n\n")
        if ex_code:
            print(bcolors.FAIL + "There was a problem during building the application. Please report the issue to the develop team." + bcolors.ENDC)
        else:
            print(bcolors.OKGREEN + "Everything has been configured correctly. Thank you for installing our software! " +bcolors.ENDC +"\n")
    
    else:
        print("\n\n\n" + bcolors.HEADER + "Exiting...." + bcolors.ENDC + "\n")


if __name__=='__main__':
    main()
