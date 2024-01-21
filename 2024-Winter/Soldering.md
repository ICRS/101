# Robotics 101: Soldering

## Introduction & Instructions

We use soldering to make permanent connections between components to create circuits.

In this half of the session, we will be soldering all the electronics we need for the robot.

![all-components](/2023/Images/all-components.jpg)

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

With that out of the way, there are 2 main parts that need to be soldered:
* [Motors](#motors)
* [Power switch](#power-switch)

You can split up the work however you like between your group, but make sure everyone gets a chance to solder!

<br>

## Motors:

In your bag there should be 2 motors, and 4 lengths of 10cm long wire. Each motor has 2 contacts that we need to connect wires to. Passing a current through the wires will then cause the motor to spin.

![motors-and-wire](/2023/Images/motors-and-wire.JPG)

**Task 1:** Strip about 2mm to 4mm of insulation from both ends of each of the 4 wires.



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

![switch](/2023/Images/switch.jpg)

This particular switch is a slide switch, and will connect the middle pin with the end pin in whichever direction the switch is moved.

The process for soldering the switch is very similar to the motors:

**Task 4:** Make a cut in the red battery wire about 6cm from the end, and strip the ends like before with the motor wire.

![switch-unsoldered](/2023/Images/switch-unsoldered.JPG)

**Task 5:** Thread the battery connector wire through one of the end holes in the switch, and thread the other piece of red wire through the centre hole. Again, bending the ends will help keep them in place.

Since this wire is multi-core it might fray. you can fix this by twisting the end.

Make sure you put a piece of heat shrink on **before** the next step or you won't

**Task 6:** Solder the wires in place.

Your switch should look like the image below.

![switch-soldered](/2023/Images/switch-soldered.JPG)

<br>

## Testing:

To make sure everything we have just soldered works, get the motor driver out of your bag (the red board with the big heat sink on it) and connect everything like the picture below.

![electronics-done](/2023/Images/electronics-done.jpg)

You can connect the wires to the screw terminals by placing a stripped end into the hole and tightening the screw on the top until it is tight. If the connection is loose you can solder a small blob of solder to the end so the screw terminal has something to grip.

Then ask a committee member for a 9V battery.

**Task 10:** Combine all the soldered parts together, connect a battery and turn the switch on. A red LED should turn on.

![electronics-test](/2023//Images/electronics-test.jpg)

You can then check the motor connections using a jumper wire as shown below:

![motor-test](/2023//Images/motor-test.jpg)

If for some reason something doesn't work then you can try debug it yourself, or ask for help.

Otherwise congratulations, you have completed the soldering section!