[Mechanical title]

[Intro]
Outline goals for robot
Show diagram of whole system (to be referred back to).

Tasks:

* Soldering:
    * 3 Screw terminals, LED, capacitor
        * LED polarity
        * Capacitor polarity
    * Motors
    * Switch
    * Extra: servo pin headers & heat shrink

* Assembly:
    * Chassis
    * Extra: ?

[3D modelling intro]

[Download Arduino before next session]

# Session 1: Assembly & Mechanical

### Contents
* [Part 1: Soldering](#part-1-soldering)
* [Part 2: Assembly](#part-2-assembly)
* [Part 3: CAD](#part-3-cad)

### Introduction

In this session, we will be assembling the robot that we will use for the rest of the course.\

[ADD IMAGE OF ALL PARTS ON TABLE]

Sections labelled "**HOW TO**" explain certain techniques, and can be skipped if you are comfortable with them.

If you are going fast then feel free to do the sections labelled "**EXTRA**", otherwise they are fine to skip or leave to the end.

## Part 1: Soldering

There are several parts of the robot that need to be soldered before we can begin assembling the chassis.

If you are unfamiliar with soldering, ask your group members to see if they can explain, otherwise check out the guide below.

--------------------------------------------------------------------------------------------------------------------------------------------------

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**HOW TO: Soldering**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SOLDERING HOW TO]

--------------------------------------------------------------------------------------------------------------------------------------------------

With that out of the way, there are 3 main areas that need to be soldered:
* [Motors](#motors)
* [Power switch](#power-switch)
* [ICRS Arduino Uno](#icrs-arduino-uno)

### Motors:

Each motor has 2 contacts that we need to connect wires to. Passing a current through the wires will then cause the motor to spin.

[IMAGE OF MOTOR AND WIRE]

Cut two lengths of wire to about 10cm and strip about 2mm to 4mm of insulation from the end. 




--------------------------------------------------------------------------------------------------------------------------------------------------

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**HOW TO: Wire Cutting and Stripping**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;There are a number of tools in the "Cutty" section of the blue tool drawer that you can use to cut and strip wire.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[PICTURE OF CUTTY DRAW & WIRE STRIPPERS W/ YELLOW ONE HIGHLIGHTED]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We'll be using the yellow one this time.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Take the tool and put your wire in the slot labelled "20" as shown below.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[PICTURE OF WIRE IN STRIPPERS]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[PICTURE OF STRIPPED WIRE]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Then squeeze and pull your wire out, and it should be nicely stripped.

--------------------------------------------------------------------------------------------------------------------------------------------------




Pass the ends through the contacts as shown below.

[IMAGE OF MOTOR WITH WIRE IN CONTACTS]

Bending the ends of the wires can be helpful to make them stay in place while soldering. 

Next solder the wires in place and repeat for the other motor.

[IMAGE OF MOTOR WITH SOLDERED WIRE]




--------------------------------------------------------------------------------------------------------------------------------------------------

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**EXTRA: Heat Shrink**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You can add heat shrink over an exposed solder joint to make sure there is no risk of a short circuit. This would be useful for both the motors and the upcoming switch.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To do this find the box labelled "Heat Shrink" and take enough pieces to cover each solder joint.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[IMAGE OF HEAT SHRINK BOX]

--------------------------------------------------------------------------------------------------------------------------------------------------

<br>

### Power switch:

A power switch will come in useful to turn the robot on and off without having to unplug the battery.

[SWITCH SIDE BY SIDE WITH CIRCUIT DIAGRAM]

This particular switch is a slide switch, and will connect the middle pin with the end pin in whichever direction the switch is moved.

The process for soldering the switch is very similar to the motors, so repeat the same steps until it looks like the image above.


<br>

### ICRS Arduino Uno:

The 101 Devkit contains most of the electronics needed for the robot. It includes a WiFi/Bluetooth microcontroller, two motor drivers, an inerial measurement unit (IMU) and other useful features. However it is currently missing a few components that are needed to make it work properly. The missing components are:
* 1 LED
* 1 Capacitor
* 3 Screw terminals
* (And optionally some extra pins)

[PICTURE OF BOARD WITH COMPONENTS AROUND IT]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**LED:**

[COLLECT AN LED]

Place the LED in the slot shown above, making sure the flat side of the LED lines up with the image on the circuit board.

![](/2023/Images/led-polarity.png)

Then bend the leads outwards so the LED stays in place when upside down, and solder it in place.

[IMAGE OF LED SOLDERED IN PLACE]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Capacitor:**

The next component to add is a large valued capacitor which will help supply energy to the motors. This one is very similar to the LED, so again place it on the board in the correct orientation, bend the leads, and solder.

![](/2023/Images/capacitor-polarity.png)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Screw Terminals:**

The last component that needs to be soldered is the screw terminals, these are what we will plug the motors and battery into later.



--------------------------------------------------------------------------------------------------------------------------------------------------

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**EXTRA: Servo Pins**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The board is currently missing a couple of components, but this isn't an issue since they won't be used in the course.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If there is a free soldering iron, and you want to practice some more, then find some pin headers in the spinny component tower and cut them so there are 6 rows of 4 pins.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[INCLUDE REST OF SERVO PIN SOLDERING EXPLAINATION]

--------------------------------------------------------------------------------------------------------------------------------------------------



<br>

## Part 2: Assembly

Congratulations! You now have an (almost) fully built the 101 robot! We'll learn how to make it move in the next session.

<br>

## Part 3: CAD