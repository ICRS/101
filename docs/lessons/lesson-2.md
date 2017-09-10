---
title: Lesson 2
lesson: 2
permalink: /lesson-2
description: Learn some circuitry.
layout: lesson
---

## Motor Driver

The rotation of a DC motor is dependent on the current flowing through it. To reverse a DC motor, you need to be able to reverse the direction of the current in the motor. The easiest way to do this is by using an H-bridge circuit. We will be using the L293 motor driver to control the motors.

{% include image.html url="/assets/img/hbridge.png" %}

{% include image.html url="/assets/img/hbridge_2.png" %}

{% include image.html url="/assets/img/hbridge_3.png" %}

{% include image.html url="/assets/img/hbridge_4.png" %}

{% include image.html url="/assets/img/hbridge_5.png" %}

**TASK 3**: Connect the indicator circuit, motors and motor drivers to the breadboard as seen in the diagram above. Use a wire connect to the 5v rail to check the motor driver works correctly. If the motors spin in the opposite direction, reverse the connections of the motors to the motor drivers.

## LDR Circuit

This sections covers how quickly we can produce a robot. With some simple components, we can make a Light following robot! Only start on this section if you finished building the power supply and motor driver. These component will be removed later as they are not part of the final circuit design.

Light Dependent Resistors (LDR) are also called photoresistors. They are made of a high resistance semiconductor material. When light hits the device, the photons give the electrons energy. This makes them jump into the conduction band, thereby making the LDR more conductive. In short, as the light intensity on the LDR increases, its resistance decreases.

We can now use the LDR to make a potential divider circuit. A potential divider is a simple circuit which turns an input voltage into a smaller output voltage. Using just two series resistors and an input voltage, we can create an output voltage that is a fraction of the input voltage.


{% include image.html url="/assets/img/ldr_1.png" %}

{% include image.html url="/assets/img/ldr_2.png" %}

**TASK 4:** Replace the tact switched with the LDRs. Use the flashlight of your phone to guide the robot. You may need to Investigate on the best resistor to use that maximises the distance between robot and flashlight (3.90kΩ was used for our robot).

**TASK 5:** Add another LDR circuit to your robot. Use the enable pins such that the robot can turn left and right depending on the direction of the light is coming from.
