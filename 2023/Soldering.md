# Robotics 101: Soldering

<br>

## Introduction & Instructions

In this half of the session, we will be soldering all the electronics we need for the robot.

[ADD IMAGE OF ALL PARTS ON TABLE] 

* Sections labelled "**HOW TO**" explain certain techniques, and can be skipped if you are comfortable with the technique.

* If you are going fast then feel free to do the sections labelled "**EXTRA**", otherwise they are fine to skip or leave to the end.

[IMAGE OF SOLDERING STATIONS]

### Safety

There are 8 soldering stations in the lab. For safety reasons, **there can only be 2 people at a soldering station at a time and you must wear safety specs when soldering**.

If you are unsure of anything, please ask one of the committee members supervising the session.

### Solder and Wire

There are several spools of solder on the benches and you can find wire at the far right end of the soldering benches.

<br>

If you are unfamiliar with soldering, ask your group members to see if they can explain, otherwise check out the guide below.

--------------------------------------------------------------------------------------------------------------------------------------------------

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**HOW TO: Soldering**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SOLDERING HOW TO]

--------------------------------------------------------------------------------------------------------------------------------------------------

With that out of the way, there are 3 main parts that need to be soldered:
* [Motors](#motors)
* [Power switch](#power-switch)
* [ICRS Arduino Uno](#icrs-arduino-uno)

You can split up the work however you like between your group, but make sure everyone gets a chance to solder!

<br>

## Motors:

In your bag there should be 2 motors, and 4 lengths of 10cm long wire. Each motor has 2 contacts that we need to connect wires to. Passing a current through the wires will then cause the motor to spin.

[IMAGE OF MOTOR AND WIRE]

**Task 1:** Strip about 2mm to 4mm of insulation from the end of each of the 4 wires.


--------------------------------------------------------------------------------------------------------------------------------------------------

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**HOW TO: Wire Stripping**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;There are a number of tools in the "Cutty" section of the blue tool drawer that you can use to cut and strip wire.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[PICTURE OF CUTTY DRAW & WIRE STRIPPERS W/ GOOD ONES HIGHLIGHTED]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We'll be using the blue ones this time, but if there aren't 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Take the tool and put your wire in the slot labelled "20" as shown below.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[PICTURE OF WIRE IN STRIPPERS]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[PICTURE OF STRIPPED WIRE]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Then squeeze and pull your wire out, and it should be nicely stripped.

--------------------------------------------------------------------------------------------------------------------------------------------------

<br>

**Task 2:** Pass the ends through the contacts as shown below.

[IMAGE OF MOTOR WITH WIRE IN CONTACTS]

Bending the ends of the wires can be helpful to make them stay in place while soldering. 

**Task 3:** Next solder the wires in place and repeat for the other motor.

[IMAGE OF MOTOR WITH SOLDERED WIRE]

--------------------------------------------------------------------------------------------------------------------------------------------------

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**EXTRA: Heat Shrink**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You can add heat shrink over an exposed solder joint to make sure there is no risk of a short circuit. This would be useful for both the motors and the upcoming switch.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To do this find the box labelled "Heat Shrink" and take enough pieces to cover each solder joint.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[IMAGE OF HEAT SHRINK BOX]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Slide the heat shrink over the solder joint and heat it up by passing a soldering iron over it. It should then shrink and protect the joint. This isn't strictly necessary, but it does help.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Note that with the battery connector, you will need to put the heat shrink on the wire before soldering it.

--------------------------------------------------------------------------------------------------------------------------------------------------

<br>

## Power switch:

A power switch will be useful to turn the robot on and off without having to unplug the battery.

[SWITCH SIDE BY SIDE WITH CIRCUIT DIAGRAM]

This particular switch is a slide switch, and will connect the middle pin with the end pin in whichever direction the switch is moved.

The process for soldering the switch is very similar to the motors:

**Task 4:** Make a cut in the red battery wire about 5cm from the end, and strip the ends like before with the motor wire.

**Task 5:** Thread the battery connector wire through one of the end holes in the switch, and thread the other piece of red wire through the centre hole. Again, bending the ends will help keep them in place.

**Task 6:** Solder the wires in place.

Your switch should look like the image [ADD IMAGE REF].

<br>

## ICRS Arduino Uno:

The 101 Devkit contains most of the electronics needed for the robot. It includes a WiFi/Bluetooth microcontroller, two motor drivers, and an inerial measurement unit (IMU). However it is currently missing a few components that are needed to make it work properly. The missing components are:

* 1 LED
* 1 Capacitor
* 3 Screw terminals
* (And optionally some extra pins)

[PICTURE OF BOARD WITH COMPONENTS AROUND IT]

![board-with-components]()

### LED:

**Task 7:** Choose a coloured LED from  and place it in the slot shown [above](), making sure the flat side of the LED lines up with the image on the circuit board. Then solder it in place.

![led-polarity](/2023/Images/led-polarity.png)

You can bend the leads outwards so the LED stays in place when upside down.

[IMAGE OF LED SOLDERED IN PLACE]

### Capacitor:

The next component to add is a large valued capacitor which will help supply energy to the motors. This one is very similar to the LED. 

**Task 8:** Place the capacitor on the board in the correct orientation, bend the leads, and solder in place.

There is a small "+" sign on the circuit board to indicate the positive lead of the capacitor.

![capacitor-polarity](/2023/Images/capacitor-polarity.png)

### Screw Terminals:

The last component that needs to be soldered is the screw terminals, these are what we will connect the motors and battery to later. Its recommended to do these one by one.

**Task 9:** Place the screw terminals in their slots, and solder in place.

Make sure the openings are facing outwards or it will be difficult to connect the wires later!

--------------------------------------------------------------------------------------------------------------------------------------------------

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**EXTRA: Servo Pins**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The board is currently missing a couple of pins used for connecting to servo motors. However this isn't an issue since they won't be used in the course.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If there is a free soldering iron, and you want to practice some more, then find some "pin headers" in the spinny component tower and cut them so there are 6 rows of 4 pins.

[PIN HEADERS IMAGE]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You can then solder these in place like below.

--------------------------------------------------------------------------------------------------------------------------------------------------