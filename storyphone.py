#!/usr/bin/env python

import subprocess
from time import sleep

import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)
GPIO.setup(1, GPIO.IN)

proc = None 

while True:
    if (GPIO.input(1) == False):
	print("off the hook!")
	if proc:
		proc.terminate()
		proc = None
	else:
		proc = subprocess.Popen(['mpg123', '-q', '381030.mp3'])

    sleep(.5);
