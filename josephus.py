#!/usr/bin/python

import argparse
import sys

parser = argparse.ArgumentParser()
parser.add_argument('-n', action="store", dest='n', metavar="elements number", type=int)
parser.add_argument('-k', action="store", dest='k', metavar="step number", type=int)
args = parser.parse_args()

if args.n <= 0 or args.k <=0 :
    sys.exit('Arguments should be positive integers')

arr = []

# Fill array
i=0
while i<args.n :
    i += 1
    arr.append(i)
count=0
j=1
while len(arr) > 1 :
    # At the end of array - go to beginning
    if count==len(arr) :
        count=0
    # Remove POI, restart j, decrement count
    if j==args.k  :
        del arr[count]
        j=0
        count -= 1
    count += 1
    j += 1
print (arr[0])
