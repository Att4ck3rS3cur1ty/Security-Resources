#!/usr/bin/python3

import subprocess, sys

# input_file = open('liveIPaddresses.txt', 'r')
with open(sys.argv[1], 'r') as input_file:
    ips = input_file.readlines()
count = 0

output_filename = "output.txt"
subprocess.call(['touch', output_filename])
f = open(output_filename, "w")

for ip in ips:
    ip = 'http://' + ip
    stdout_file = subprocess.call(['dirb', ip], stdout=f)
    print stdout_file.stdout
f.close()