#!/usr/bin/env python3

import string
import random

epiloges = string.ascii_uppercase +"0123456789"
for kappa in range(1000):
    for j in range(3): 
        for i in range(4):
            print(random.choice(epiloges), end="")
        if j != 2:
            print('-',end="")
        else:
            print()
