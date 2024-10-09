# Robotics 101: Soldering

## Introduction & Instructions

We use soldering to make permanent connections between components to create circuits.

In this half of the session, we will be soldering all the electronics we need for the robot. These are listed in the table below.

| Component   | Quantity    |
| ----------- | ----------- |
| Motors      | 2          |
| 9V Battery Connector  | 1           |
| Slide Switch  | 1           |
| Motor Driver  | 1           |
| Header Pins  | 2           |
| ESP32 Devboard  | 1           |

You will also need 2 5 cm lengths of red wire and 2 5 cm lengths of black wire.

![all-components](/2024-Autumn/images/all-components.jpg)

* Sections labelled "**HOW TO**" explain certain techniques, and can be skipped if you are comfortable with the technique.

* If you are going fast then you can do the sections labelled "**EXTRA**", otherwise they are fine to skip or leave until the end.

![soldering-stations](/2024-Autumn/images/soldering-stations.JPG)

### Safety

There are 8 soldering stations in the lab. For safety reasons, **there can only be 2 people at a soldering station at a time and you must wear safety specs when soldering**.

If you are unsure of anything or want to ask a question, please feel free to ask one of the committee members supervising the session.

### Solder and Wire

There are several spools of solder on the benches and if you need extra wire, you can find it at the far right end of the soldering benches.

![wire](/2024-Autumn/images/wire.JPG)

<br>

With that out of the way, there are 2 main parts that need to be soldered:
* [Motors](#motors)
* [Power switch](#power-switch)

You can split up the work however you like between your group, but make sure everyone gets a chance to solder!

<br>

## Motors:

In your bag there should be 2 motors, and you'll need to get 4 lengths of 10cm long wire from the end of the soldering benches. Each motor has 2 contacts that we need to connect wires to. Passing a current through the wires will then cause the motor to spin.

![motors-and-wire](/2024-Autumn/images/motors-and-wire.JPG)

**Task 1:** Strip about 2mm to 4mm of insulation from the end of each of the 4 wires.



><br>
>
>**HOW TO: Wire Stripping**
>
>There are a number of tools in the "Cutty" section of the blue tool drawer that you can use to cut and strip wire.
>
>![cutty-draw](/2024-Autumn/images/cutty-draw.JPG)
>
>![many-wire-strippers](/2024-Autumn/images/many-wire-strippers.jpg)
>
>We'll be using the blue ones this time, but if there aren't any available you can use the red or yellow ones. Note that you will probably have to share with other groups.
>
>Take the wire, and place it 2-4mm inside the tool, then squeeze the handle.
>
>![wire-strippers](/2024-Autumn/images/wire-strippers.jpg)
>
>![stripped-wire](/2024-Autumn/images/stripped-wire.JPG)
>
>The wire should now be nicely stripped.
><br>



**Task 2:** Pass the ends of the wire through the motor contacts as shown below.

![wire-in-motor](/2024-Autumn/images/wire-in-motor.JPG)

Bending the ends of the wires can be helpful to make them stay in place while soldering. 


**Task 3:** Next solder the wires in place and repeat for the other motor.

If you are unfamiliar with soldering, ask your group members to see if they can explain, otherwise check out the guide below.

><br>
>
>**HOW TO: Soldering**
>
>Below is one of the soldering stations, check that you have some solder nearby, and a mat before starting.
>
>![solder-area](/2024-Autumn/images/soldering-area.jpg)
>
>Hold the soldering iron sort of like a pen, making sure not to touch any metal parts as they will get hot.
>
>![holding-iron](/2024-Autumn/images/holding-iron.jpg)
>
>Next you are ready to turn on the iron. 350 Degrees celcius is a good temperature to use, and will ensure the solder is melted properly.
>
>![iron-heating](/2024-Autumn/images/iron-heating.jpg)
>
>Wait for the iron to heat up to the set temperature and then turn on the extractor fan using the switch on the bench.
>
>You can then begin warming up the joint you want to solder.
>
>![warmup-joint](/2024-Autumn/images/warmup-joint.jpg)
>
>After 10 seconds or so, the joint will be hot enough, and you can now feed in a small blob of solder.
>
>![feed-in-solder](/2024-Autumn/images/feed-in-solder.jpg)
>
>Then remove the iron and allow the joint to cool.
><br>

![motor-soldered](/2024-Autumn/images/motor-soldered.JPG)

><br>
>
>**EXTRA: Heat Shrink**
>
>You can add heat shrink over an exposed solder joint to make sure there is no risk of a short circuit. This would be useful for both the motors and the upcoming switch.
>
>To do this find the box labelled "Heat Shrink" and take enough pieces to cover each solder joint.
>
>![heat-shrink-box](/2024-Autumn/images/heat-shrink-box.JPG)
>
>![heat-shrink](/2024-Autumn/images/heat-shrink.JPG)
>
>Slide the heat shrink over the solder joint and heat it up by passing a soldering iron over it. It should then shrink and protect the joint.
>
>![motors-with-heat-shrink](/2024-Autumn/images/motors-with-heat-shrink.JPG)
>
>Note that with the battery connector, you will need to put the heat shrink on the wire before soldering it.
><br>

## Power switch:

A power switch will be useful to turn the robot on and off without having to unplug the battery.

![switch](/2024-Autumn/images/switch.jpg)

This particular switch is a slide switch, and will connect the middle pin with the end pin in whichever direction the switch is moved.

The process for soldering the switch is very similar to the motors:

**Task 4:** Make a cut in the red battery wire about 6cm from the end, and strip the ends like before with the motor wire.

![switch-unsoldered](/2024-Autumn/images/switch-unsoldered.JPG)

**Task 5:** Thread the battery connector wire through one of the end holes in the switch, and thread the other piece of red wire through the centre hole. Again, bending the ends will help keep them in place.

**Task 6:** Solder the wires in place.

Your switch should look like the image below.

![switch-soldered](/2024-Autumn/images/switch-soldered.JPG)

<br>

**Task 7:** Solder the header pins onto the devboard.

Take the header pins provided and slot them into the devboard as shown, make sure they are in the same position as shown in the picture. 

![header](/2024-Autumn/images/header.jpg)

Next place the devboard over the header pins. You can solder them together by placing the tip of your soldering iron against the pin, make sure it touches both the pin and the pad on the devboard. Now you can feed in a small amount of solder until you get a joint like the one shown in the picture. 

![soldering-header](/2024-Autumn/images/soldering-header.jpg)

<br>

**Task 8:** Lastly wire the motors and motor drivers as shown in the picture. You can place the wire within the screw terminal and tighten the screws to hold the wire in place. 

![motor-wired](/2024-Autumn/images/motor-wired.jpg)

<br>