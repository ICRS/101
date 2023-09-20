---
title: Lesson 3
lesson: 3
permalink: /lesson-3
description: Learn another thing.
layout: lesson
---

## The Pi Zero

We will be using a Raspberry Pi Zero. Putting it as simply as possible, the Raspberry Pi Zero is an incredibly cheap, incredibly small £4 computer. The Pi Zero has been set up so that you can drag and drop python files to it and it will start to run immediately.

{% include image.html url="/assets/img/pizero.png" description="Pi Zero pinout sourced here."%}


**TASK 6:** Connect your 5V rail on breadboard to 5V power on the Pi, through a Diode (with stripe on the diode closest to the Pi Zero end) and the an LED indicator circuit.

{% include image.html url="/assets/img/pin_connections.png" description="Pin connections"%}

{% include image.html url="/assets/img/diode_diagram.png" description="Diode diagram"%}

After wiring up your Raspberry Pi Zero, you can start running some test code on the Pi Zero.

## Programming with Python

Programming is fundamentally a way to tell a computer what to do. Simply by writing lines of code, you can tell a computer to take in inputs, make decisions using those inputs, and then output results back to the real world - through a screen, speakers, or motors.

We won’t be teaching all of python, but we will be teaching you all you need to know for the course. We shall be learning to code through a programming language called Python. Python has the two benefits of being both simple and powerful - it’s a great beginners programming language, but it is still flexible enough to be used widely in companies such as Google. The software we’ll be using on your computers to code in Python is an online IDE called [repl.it](repl.it).

### How to repl.it

1. Write code on repl.it
2. Copy python code into a text file
3. Save the file as a python file or rename text file such that it ends in “.py”. This makes your text file into a python file
4. Copy the python file onto your PiZero
5. **Do not** edit code directly on the PiZero

```python
# ========= test.py ===========
from gpiozero import Robot, DistanceSensor, LED
# This is a comment. They have no effect in your code
# Import the library with all the functions you need
led = LED(pin=18)
# Use the LED object, calling it 'led'
led.blink(0.5, 0.5, None, False)
# on for 0.5 seconds, off for 0.5 seconds, run continuously, run in the foreground
```

You can then copy (or drag and drop) your test.py file across to this drive and if you’ve wired everything up correctly, you should be able to see the LED on your board start blinking!

**TASK 7:** Run the test code, make sure the led blinks.

## Gpiozero Library

As you’ve got a taste from the blinking LED example, the gpiozero library that we are using is exceedingly simple and flexible. It is based around a series of objects that map to real world pieces of hardware - for example, a ‘Button’ object can be created to allow you to interface with a physical button on your breadboard plugged into the Pi, just as the LED object was earlier. The object we’ll start spending most of our time with is the Robot object. This allows us to control the speed and direction (including making it go backwards) of the robot.

We’ll go over the basics of what we’ll use here, but you can find full documentation for the library [here](http://gpiozero.readthedocs.io/en/stable/).

**TASK 8:** Using wire, connect input 1 and input 2 (on the left motor side of the H-Bridge) to **BCM 12** and **BCM 16** for the left respectively. Connect input 3 and input 4 (on the right motor side of the H-Bridge) to **BCM 23** and **BCM 24** for the right motor respectively.


{% include image.html url="/assets/img/pin_description.png" description="PiZero and Motor driver pin description."%}

To create a Robot object, ensure that in your import statement you have the following:


```python
from gpiozero import Robot, DistanceSensor, LED
from time import sleep
#Import the library with all the functions needed
led = LED(pin=18)
#Use the LED object, calling it 'led'
led.blink(0.5, 0.5,  None, True)
#on for 0.5 seconds, off for 0.5 seconds, run continuously, run in the background

leftPins = (12, 16)
rightPins = (23, 24)
#Define what BCM pins the motor drivers are connected to

robot = Robot(left=leftPins, right=rightPins)
#Define the robot object

while True:
    # Continuously perform the following function
    robot.forward()
    sleep(3)
    # Go forward for 3 seconds

    robot.backward(0.7)
    sleep(3)
    # Go backward for 3 seconds
    # robot functions allows you to put in a speed between 0 and 1. 1 being the max and the default

    robot.left(0.5)
    sleep(3)
    # turn left for 3 seconds

    robot.right(0.5)
    sleep(3)
    # turn right for 3 seconds
    robot.stop()
    sleep(3)
    # stop for 3 seconds
```

**TASK 9:** Using the sample code, try and use some of the following commands to make it go in a figure-eight.

{% include image.html url="/assets/img/task_9.png" %}
