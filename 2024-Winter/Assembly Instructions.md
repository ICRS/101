## Part 1: Assembly

You will need a few new components to complete the chassis of your robot, so make sure you collect the components in the table below either at the start, or as you progress through the tasks.

| Component   | Quantity    |
| ----------- | ----------- |
| M3 x 8mm    | 6           |
| M3 Spacers  | 4           |
| Chassis     | 1           |
| Wheels      | 2           |
| Shaft adaptors | 2        |
| Ball wheel  | 1           |

<br>

**Task 0:** Collect components in the table above.

![all-components-2](/2024-Winter/Images/all-components-2.jpg)

<br>

**Task 1:** Disconnect all the wires from the motor driver.

This will make it easier to put everything together.

![arduino-disconnected](/2024-Winter/Images/arduino-disconnected.jpg)

<br>

**Task 2:** Screw the motor driver into the top of the chassis using four M3 x 8mm bolts and spacers.

![arduino-screwed](/2024-Winter/Images/arduino-screwed.jpg)

Spacers help us separate the board from the chassis so the board is flat and doesn't put pressure on the bottom of the pins.

<br>

**Task 3:** Put the motors in their slots and connect up to the motor driver.

You will need to pass the wires through the motor housing first. Hopefully you can see why we took apart the electronics first!

![motors-in-chassis-1](/2024-Winter/Images/motors-in-chassis-1.jpg)

Then put the motor wires into the screw terminals and tighten them.

![switch-in-chassis-2](/2024-Winter/Images/switch-in-chassis-2.jpg)

**Task 4:** Put switch in slot and connect to motor driver.  

![switch-in-chassis-1](/2024-Winter/Images/switch-in-chassis-1.jpg)



<br>

**Task 5:** Turn over the chassis and screw in the ball wheel.

![ball-wheel-on-chassis](/2024-Winter/Images/ball-wheel-on-chassis.jpg)

This wheel will let the robot balance and move without dragging, while still being able to spin on the spot.

<br>

**Task 6:** Put the shaft adapters on both motors.

Make sure the flat side of the shaft aligns with the flat side inside the adapter.

![shaft-adapter](/2024-Winter/Images/shaft-adapter.jpg)

These adapters are needed to use the small motor shaft with these particular wheels.

<br>

**Task 7:** Put the wheels on the motor shafts.

![wheels-going-on](/2024-Winter/Images/wheels-going-on.jpg)

This might require some force, so be careful not to break anything.

![almost-finished-robot](/2024-Winter/Images/almost-finished-robot.jpg)

You're now done with the mechanical assembly (apart from a battery holder)! Next we'll look at using a breadboard to add some more functionality.

<br>

## Part 2: Using a breadboard

**Task 8:** Put the breadboard and the ESP32 onto the chassis as shown below:

![breadboard_in_chassis](/2024-Winter/Images/breadboard_in_chassis.jpg)

Make sure the breadboard holes on the near side are exposed so we can power the board and use the pins.

Reminder of how a breadboard works:

![breadboard-right-and-wrong](/2024-Winter/Images/breadboard-right-and-wrong.png)

><br>
>
>**Jumper Wires**
>
>We use jumper wires to non-permanently connect circuits together.
>
>This is easier than cutting wires to size and soldering every time we need to make a connection.
>
>Jumper wires come with either male or female ends.
>
![jumper-wires](/2024-Winter/Images/jumper-wires.jpg)
>
> The colour of wire you use doesn't matter, but it can be helpful to use red wires for power, and blue/black wires for ground.
>You can find jumper wires in the "Jumper Wires" box.
>
![jumper-wires-box](/2024-Winter/Images/jumper-wires-box.jpg)
><br>

**Task 9:** Connect the wires between the motor driver and the ESP32 as shown below:

![default_wires_1](/2024-Winter/Images/default_wires_1.jpg)

![default_wires_2](/2024-Winter/Images/default_wires_2.jpg)

For the motor driver power and ground, you will have to put the end of the jumpers into the screw terminals. It can be quite fiddly to make these wires stay in, so take your time.

![motor_driver_wires](/2024-Winter/Images/motor_driver_wires.jpg)

We will now connect a switch to the ESP32 to make it turn the motors.

You will see the default code running on the ESP32 next session, but for now it is enough to know that putting a logic HIGH (3.3V) on pin 34 will make the motors spin.

**Task 10:** Build the switch circuit shown in the image below.

Use two large valued resistors, but not too large: >10kΩ and <1MΩ.

![button-on-breadboard](/2024-Winter/Images/switch_in_breadboard.jpg)

Flipping the switch should make the wheels spin.

If they spin backwards, you can swap around the signal wires to the motor driver until it works properly.
><br>
>
> **Polling vs Interrupts**
>
>The program on the ESP32 checks every 100ms if the switch is on and turns the motors  on if it is. There is a slight delay associated with this of up to 100ms. This is the downside of what's known as [polling](https://en.wikipedia.org/wiki/Polling_(computer_science)). 100ms doesn't matter in this scenario, but constantly checking uses up CPU time and isn't ideal.
>
>A better method is to use [interrupts](https://en.wikipedia.org/wiki/Interrupt), which stop the CPU to run a specific bit of code when they are triggered. We won't be using them, but it is good to know they exist.
><br>

<br>

><br>
>
>**Extra task: Replace the switch with a sensor.**
>
>A switch isn't very useful for a robot, but if we replace it with a sensor, e.g. an IR sensor then we can add some basic collision detection.
>
![ir](/2023/Images/ir.png)
>
>You can find these sensors in a drawer next to the 3D printers.
>
> Connect VCC to 3.3V, GND to GND and the OUT/D pin to pin 34. We don't need resistor anymore since it is on the sensor.
>
![ir-robot](/2024-winter/Images/ir-robot.png)
>
>Now when the robot is powered on, it will go forwards until it detects an object and then it will stop.
>
>You may need to twist the potentiometer on the back with a screwdriver to adjust the range.
>
>Using multiple of these we could potentially use them to follow a line...
>
><br>

Congratulations, you're done!