#!/bin/bash

# change the <user>@<address> below to suit your setup

scp -r Makefile hello-world-OpenVG.c pi@192.168.1.103:/home/pi/
ssh pi@192.168.1.103 && make
