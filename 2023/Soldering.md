# Robotics 101: Soldering

## Introduction & Instructions

We use soldering to make permanent connections between components to create circuits.

In this half of the session, we will be soldering all the electronics we need for the robot.

[ADD IMAGE OF ALL PARTS ON TABLE] 

* Sections labelled "**HOW TO**" explain certain techniques, and can be skipped if you are comfortable with the technique.

* If you are going fast then you can do the sections labelled "**EXTRA**", otherwise they are fine to skip or leave until the end.

![soldering-stations](/2023/Images/soldering-stations.JPG)

### Safety

There are 8 soldering stations in the lab. For safety reasons, **there can only be 2 people at a soldering station at a time and you must wear safety specs when soldering**.

If you are unsure of anything or want to ask a question, please feel free to ask one of the committee members supervising the session.

### Solder and Wire

There are several spools of solder on the benches and if you need extra wire, you can find it at the far right end of the soldering benches.

![wire](/2023/Images/wire.JPG)

<br>

If you are unfamiliar with soldering, ask your group members to see if they can explain, otherwise check out the guide below.

><br>
>
>**HOW TO: Soldering**
>
>Below is one of the soldering stations, check that you have some solder nearby, and a mat before starting.
>
>![solder-area](/2023/Images/soldering-area.jpg)
>
>Hold the soldering iron sort of like a pen, making sure not to touch any metal parts as they will get hot.
>
>![holding-iron](/2023/Images/holding-iron.jpg)
>
>Next you are ready to turn on the iron. 350 Degrees celcius is a good temperature to use, and will ensure the solder is melted properly.
>
>![iron-heating](/2023/Images/iron-heating.jpg)
>
>Wait for the iron to heat up to the set temperature and then turn on the extractor fan using the switch on the bench.
>
>You can then begin warming up the joint you want to solder.
>
>![warmup-joint](/2023/Images/warmup-joint.jpg)
>
>After 10 seconds or so, the joint will be hot enough, and you can now feed in a small blob of solder.
>
>![feed-in-solder](/2023/Images/feed-in-solder.jpg)
>
>Then remove the iron and allow the joint to cool.
><br>

With that out of the way, there are 3 main parts that need to be soldered:
* [Motors](#motors)
* [Power switch](#power-switch)
* [ICRS Arduino Uno](#icrs-arduino-uno)

You can split up the work however you like between your group, but make sure everyone gets a chance to solder!

<br>

## Motors:

In your bag there should be 2 motors, and 4 lengths of 10cm long wire. Each motor has 2 contacts that we need to connect wires to. Passing a current through the wires will then cause the motor to spin.

![motors-and-wire](/2023/Images/motors-and-wire.JPG)

**Task 1:** Strip about 2mm to 4mm of insulation from the end of each of the 4 wires.



><br>
>
>**HOW TO: Wire Stripping**
>
>There are a number of tools in the "Cutty" section of the blue tool drawer that you can use to cut and strip wire.
>
>![cutty-draw](/2023/Images/cutty-draw.JPG)
>
>![many-wire-strippers](/2023/Images/many-wire-strippers.jpg)
>
>We'll be using the blue ones this time, but if there aren't any available you can use the red or yellow ones. Note that you will probably have to share with other groups.
>
>Take the wire, and place it 2-4mm inside the tool, then squeeze the handle.
>
>![wire-strippers](/2023/Images/wire-strippers.jpg)
>
>![stripped-wire](/2023/Images/stripped-wire.JPG)
>
>The wire should now be nicely stripped.
><br>



**Task 2:** Pass the ends of the wire through the motor contacts as shown below.

![wire-in-motor](/2023/Images/wire-in-motor.JPG)

Bending the ends of the wires can be helpful to make them stay in place while soldering. 

**Task 3:** Next solder the wires in place and repeat for the other motor.

![motor-soldered](/2023/Images/motor-soldered.JPG)

><br>
>
>**EXTRA: Heat Shrink**
>
>You can add heat shrink over an exposed solder joint to make sure there is no risk of a short circuit. This would be useful for both the motors and the upcoming switch.
>
>To do this find the box labelled "Heat Shrink" and take enough pieces to cover each solder joint.
>
>![heat-shrink-box](/2023/Images/heat-shrink-box.JPG)
>
>![heat-shrink](/2023/Images/heat-shrink.JPG)
>
>Slide the heat shrink over the solder joint and heat it up by passing a soldering iron over it. It should then shrink and protect the joint.
>
>![motors-with-heat-shrink](/2023/Images/motors-with-heat-shrink.JPG)
>
>Note that with the battery connector, you will need to put the heat shrink on the wire before soldering it.
><br>

## Power switch:

A power switch will be useful to turn the robot on and off without having to unplug the battery.

[SWITCH SIDE BY SIDE WITH CIRCUIT DIAGRAM]

This particular switch is a slide switch, and will connect the middle pin with the end pin in whichever direction the switch is moved.

The process for soldering the switch is very similar to the motors:

**Task 4:** Make a cut in the red battery wire about 6cm from the end, and strip the ends like before with the motor wire.

![switch-unsoldered](/2023/Images/switch-unsoldered.JPG)

**Task 5:** Thread the battery connector wire through one of the end holes in the switch, and thread the other piece of red wire through the centre hole. Again, bending the ends will help keep them in place.

**Task 6:** Solder the wires in place.

Your switch should look like the image [ADD IMAGE REF].

![switch-soldered](/2023/Images/switch-soldered.JPG)

<br>

## ICRS Arduino Uno:

The 101 Devkit contains most of the electronics needed for the robot. It includes a WiFi/Bluetooth microcontroller, two motor drivers, and an inerial measurement unit (IMU). However it is currently missing a few components that are needed to make it work properly. The missing components are:

* 1 LED
* 1 Capacitor
* 3 Screw terminals
* (And optionally some extra pins)


![board-with-components](/2023/Images/board-with-components.png)

If you skip ahead a bit, you can see what the finished board looks like.

### LED:

**Task 7:** Choose a coloured LED from  and place it in the slot shown above, making sure the flat side of the LED lines up with the image on the circuit board. Then solder it in place.

![led-polarity](/2023/Images/led-polarity.png)

You can bend the leads outwards so the LED stays in place when upside down.

### Capacitor:

The next component to add is a large valued capacitor which will help supply energy to the motors. This one is very similar to the LED. 

**Task 8:** Place the capacitor on the board in the correct orientation, bend the leads, and solder in place.

There is a small "+" sign on the circuit board to indicate the positive lead of the capacitor.

![capacitor-polarity](/2023/Images/capacitor-polarity.png)

### Screw Terminals:

The last component that needs to be soldered is the screw terminals, these are what we will connect the motors and battery to later. Its recommended to do these one by one.

**Task 9:** Place the screw terminals in their slots, and solder in place.

Make sure the openings are facing outwards or it will be difficult to connect the wires later!

![soldered-board](/2023/Images/soldered-board.JPG)

**Task 9:** Using side cutters (found in the "cutty" draw), cut off the extra leads for the capacitor and LED.

![finished-board](/2023/Images/finished-board.JPG)

Your board is now (mostly) finished!

><br>
>
>**EXTRA: Servo Pins**
>
>The board is currently missing a couple of pins used for connecting to servo motors. However this isn't an issue since they won't be used in the course.
>
>If there is a free soldering iron, and you want to practice some more, then find some "pin headers" in the spinny component tower and cut them so there are 6 rows of 4 pins.
>
>![header-pins](/2023/Images/header-pins.JPG)
>
>You can then solder these in place like below.
>
>![board-with-servo](/2023/Images/board-with-servo.JPG)
>
><br>

## Testing:

[IMAGE OF WHOLE CIRCUIT]

**Task 10:** Combine all the circuits together using the screw terminals, and press the button labelled "DFU" on the board to make sure it works.