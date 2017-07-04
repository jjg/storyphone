# Storyphone

An audiobook hardware project for the Little Open Library

## Description

Stop by the little library, sit down on the stump, pick up the handset and listen to a story.

## Components
* Payphone handset
* 3D printed telephone handset hook
* Momentary switch (Cherry D45X)
* 10k resistor
* Raspberry Pi 
* Power supply
* Misc hardware, wires, etc.

## Build Info

The handset is a NOS payphone handset.  The speaker ("receiver" in telephone vernacular) is about 30 ohms and connected to the two white leads that come out of the armored cable.  Some quick tests show that the built-in analog audio output of the Raspberry Pi Model B (original) can drive this speaker directly.

The handset hook is a custom 3D printed part.  It will need to incorporate a switch connected to the GPIO on the Raspberry Pi to control the audio playback software.  The model for this part is a work in progress...

The Raspberry Pi used in this project is an old Model B, any model with built-in analog audio out should work.

A momentary pushbutton switch is connected to `GPIO #1` and `GND`.  A 10 ohm pull-up resistor is connected between `GPIO #1` and `3.3v`.  `GPIO #1` was selected only because it was convenient for the connectors I had on-hand, a pin that isn't otherwise used (`GPIO #1` is also the `SCL` pin) would be a better choice.

The controller code is written in Python and based on https://learn.adafruit.com/playing-sounds-and-using-buttons-with-raspberry-pi/overview  The code is modified to use `subprocess.Popen()` so we can stop & restart playback when the hook switch is activated.

When the momentary switch is open, playback begins.  When the switch is closed, playback stops.
