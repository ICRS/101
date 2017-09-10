---
title: Lesson 4
lesson: 4
permalink: /lesson-4
description: This is obviously a perfect square.
layout: lesson
---

## Ultrasound

An Ultrasonic Sensor ([HC-SR04](https://gpiozero.readthedocs.io/en/v1.3.1/api_input.html#distance-sensor-hc-sr04)) is a module that is used to find the distance between the nearest object and the module itself. So, it has two heads where one sends the ultrasound signal and the other receives. The range of the sensor is from 2cm to 3m (with nominal errors).

The sensor sends an ultrasonic short pulse signal from the trigger and listens to the signal from the echo when it bounces back from the object. The longer the echo, the further the distance.

{% include image.html url="/assets/img/ultrasound_1.png" %}

{% include image.html url="/assets/img/ultrasound_2.png" %}

**REMEMBER:** The Pi Zero is a 3.3v architecture. Passing 5v into it input pin can damage the Pi

**TASK 10:** attach ultrasound sensors to the breadboard. Write code such that when your hand is close to the sensor, the LED turns on.

{% include image.html url="/assets/img/ultrasound_circuit.png" description ="PiZero and ultrasound pin description. Go to pinout.xyz for Pi Zero pinout" %}

```python
from gpiozero import Robot, DistanceSensor, LED
from time import sleep
#Import the library with all the functions needed
leftPins = (12, 16)
rightPins = (23, 24)
robot = Robot(left=leftPins, right=rightPins)
#Define the pins for the robot object
sensorLeft = DistanceSensor(echo=25, trigger=8, queue_len=10)
sensorRight = DistanceSensor(echo=7, trigger=1, queue_len=10)
#Define the pins for the ultrasound modules
   
led = LED(pin=18)
 
led.blink(0.5, 0.5,  2, False)
#Flashes twice in the foreground
while True:
  if sensorLeft.distance < 0.4:
    led.value = True
    sleep(0.5)
    #if there is an object less than 40cm away on the left, turn the LED on for 0.5 seconds
  elif sensorRight.distance < 0.4:
    led.value = True
    sleep(0.5)
    #if there is an object less than 40cm away on the right, turn the LED on for 0.5 seconds
  else:
    led.value = False
    sleep(0.1)
    #If none of the conditions are meet, turn the LED off
```

## Obstacle Avoidance

**TASK 11:** Edit “maze.py” so the your robot can navigate through the maze. The figure below shows a flowchart of the basic algorithm.


{% include image.html url="/assets/img/maze_flow.png" description ="Basic maze algorithm" %}

## Speed Control

Pulse Width Modulation (PWM) basically is an ON and OFF pulse signal with a constant period or frequency. The proportion of pulse ON time to the pulse period is called a “duty cycle” and it expressed in percentage. For example if the proportion of pulse ON time is 50% to the total pulse period than we say that the PWM duty cycle is 50%. The PWM duty cycle percentage is corresponding to the average power produced by the pulse signal; the lower percentage produces less power than the higher percentage. Therefore by changing the PWM duty cycles we could change the average voltage across the DC motor terminals, this means we can vary the speed of the motors just by changing the PWM duty cycle.


{% include image.html url="/assets/img/pwm_eqn.png" %}

{% include image.html url="/assets/img/pwm_timing.png" description ="PWM Timing Diagram" %}

Thankfully, gpiozero has a [robot.value = (speed_left, speed_right)](https://gpiozero.readthedocs.io/en/v1.3.1/api_boards.html?highlight=robot#robot) function that can that allows you to control the speed of the motors independently.

```python
#instead of using robot.forward()
robot.value = (1, 1)
#this sets the motors to spin a full speed, 100% duty cycle. Equivalent to robot.forward()
#instead of using robot.backward()
robot.value = (-1, -1)
#this sets the motors to spin a full speed, 100% duty cycle
#for unbalanced motors
robot.value = (0.8, 1)
#this sets the left motor to run at 80% of its max speed and the right motor at its max speed
```
