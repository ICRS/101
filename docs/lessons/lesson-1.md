---
title: Lesson 1
lesson: 1
permalink: /lesson-1
layout: lesson
description: Hello world for robotics.
---

Welcome to Robotics 101. We're going to start by assuming you've already assembled your robot's chassis - well done! 

Our next priority is powering the robot. A 5v power bank is used which generates a fixed output voltage that remains constant regardless of changes to its input load conditions. We will be connecting the regulator to a breadboard - it is a convenient structure to prototype our designs. The capacitors help ensure the noise that the motors produce, do not affect the other circuits in our system. Have a look at [Back EMF](https://en.wikipedia.org/wiki/Counter-electromotive_force) if you’re interested. In short, capacitors smooth out the noise signal so that the power supply remains constant.

If too little current is flowing, the power bank turns off assuming that the “phone” is charged. The two 120Ω resistors, allow a sufficient current so that the power bank remains on.

{% include image.html url="/assets/img/5v_power_supply.png" description="5v Power supply circuit with indicator light" %}

On the breadboard, the distance between holes is a standard distance so that components like IC’s (chips) will fit perfectly. This also fits well for standard resistors, capacitors, LED’s etc. Under the holes we find metal strips which can make contact with the pins of the components or jumpers (wires) we stick into the holes. These strips connect to multiple pins, but not to all pins (see layout example below). Before we go to the layout, we can think of a breadboard as a board that can be divided in two functional areas:

* the power rails(s) (in the drawing below A and D)
* the component grid(s) (in the drawing below B and C)

From the diagram below, the power rails are horizontally connected (A and D). Most breadboards have at least 2 “component grids” (B and C), separated at exactly the distance between the two pin sides of a DIP IC package between B and C.

{% include image.html url="/assets/img/layout_breadboard.png" description="Layout for a breadboard." %}

An LED indicator circuit is also added to the output of the 5v supply. This tells us when the switch is closed and the robot is being supplied with power. An LED is a polarised component, therefore current can only flow one way - in the direct that the arrow is pointing. On your circuit, make sure the LED is connected correctly to the breadboard by connecting in the cathode (see the diagram below) to 0v.

{% include image.html url="/assets/img/led_capacitor.png" description="LED and electrolytic capacitor diagram." %}


**TASK 1: Assemble the robot chassis. Connect the USB breakout, capacitors, resistors and indicator LED to your breadboard.**
