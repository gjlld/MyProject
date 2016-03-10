#!/bin/bash

# change the <user>@<address> and the program name below to suit your setup
# Do NOT change Makefile!

scp -r Makefile TEST.c pi@192.168.1.103:/home/pi/
ssh pi@192.168.1.103 "make && ./TEST"
