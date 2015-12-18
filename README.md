#Storyphone

An audiobook hardware project for the Little Open Library

##Description

Stop by the little library, sit down on the stump-seat, pick up the handset and listen to a story.

##Current Prototype
![Photo of prototype](https://raw.githubusercontent.com/jjg/storyphone/master/images/storyphone_hook_v5_640.jpg)

##Components
* Payphone handset
* Telephone handset hook (https://www.tinkercad.com/things/jDHRsawEVTZ-storyphone-hook)
* Momentary switch (Cherry D45X)
* 10k resistor
* Raspberry Pi 
* Power supply
* Misc hardware, wires, etc.

##Build Info (work-in-progress)
The handset is a NOS payphone handset.  The speaker ("receiver" in telephone vernacular) is about 30 ohms and connected to the two white leads that come out of the armored cable.  Some quick tests show that the built-in analog audio output of the Raspberry Pi Model B (original) can drive this speaker directly.

The handset hook is a custom 3D printed part.  It will need to incorporate a switch connected to the GPIO on the Raspberry Pi to control the audio playback software.  The model for this part is a work in progress...

The Raspberry Pi used in this project is an old Model B, any model with built-in analog audio out should work.

A momentary pushbutton switch is connected to `GPIO #1` and `GND`.  A 10 ohm pull-up resistor is connected between `GPIO #1` and `3.3v`.  `GPIO #1` was selected only because it was convenient for the connectors I had on-hand, a pin that isn't otherwise used (`GPIO #1` is also the `SCL` pin) would be a better choice.

The controller code is written in Python and based on https://learn.adafruit.com/playing-sounds-and-using-buttons-with-raspberry-pi/overview  The code is modified to use `subprocess.Popen()` so we can stop & restart playback when the hook switch is activated.

When the momentary switch is open, playback begins.  When the switch is closed, playback stops.


## Dev Journal

###12172015
Created a project over at hackaday.io to track progress.  Source and design files will stay here, but further project updates will be posted at https://hackaday.io/project/8841-storyphone.

###12132015
Re-organized repository

New hood model works and incorporates microswitch.  This design works and actuates the switch correctly, but doesn't provide any protection so it needs more work before it's ready for outdoor use.

Modified the code so that playback begins from the beginning of the file when the hook switch is open, stops when it's closed.

###12062015
Original hook design was done in OpenSCAD but I wasn't getting what I wanted out of it and decided to give it a go in Tinkercad.  I prefer OpenSCAD but since it's not a parametric design it's not a big deal.


