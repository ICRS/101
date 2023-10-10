## Part 1: Assembly

You will need a few new components to complete the chassis of your robot, so make sure you collect the components in the table below either at the start, or as you progress through the tasks.

| Component   | Quantity    |
| ----------- | ----------- |
| M3 x 10mm   | 5           |
| M3 x 16mm   | 2           |
| M3 Washers  | 3           |
| Chassis     | 1           |
| Breadboard  | 1           |
| Wheels      | 2           |
| Shaft adaptors | 2        |
| Ball wheel  | 1           |

<br>

**Task 0:** Collect components in the table above.

![all-components-2](/2023/Images/all-components-2.jpg)

<br>

**Task 1:** Disconnect all the wires from the Arduino.

This will make it easier to put everything together.

![arduino-disconnected](/2023/Images/arduino-disconnected.jpg)

<br>

**Task 2:** Screw the Arduino into the top of the chassis using three M3 x 10mm bolts (the shorter ones) and spacers.

![arduino-screwed](/2023/Images/arduino-screwed.jpg)

Spacers help us separate the board from the chassis so the board is flat and doesn't put pressure on the bottom of the pins.

<br>

**Task 3:** Screw the breadboard into the top of the chassis using two M3 x 16mm bolts (the longer ones).

![breadboard-screwed](/2023/Images/breadboard-screwed.jpg)

<br>

**Task 4:** Put the motors in their slots and connect up to the Arduino.

You will need to pass the wires through the motor housing first. Hopefully you can see why we took apart the electronics first!

![motors-in-chassis-1](/2023/Images/motors-in-chassis-1.jpg)

Pass the wires through the slot in the back of the chassis, like in the pictures.

Then put the motor wires into the screw terminals and tighten them.

![motors-in-chassis-2](/2023/Images/motors-in-chassis-2.jpg)

**Task 5:** Put switch in slot and connect to Arduino.  

![switch-in-chassis-1](/2023/Images/switch-in-chassis-1.jpg)

![switch-in-chassis-2](/2023/Images/switch-in-chassis-2.jpg)

<br>

**Task 6:** Turn over the chassis and screw in the ball wheel.

![ball-wheel-on-chassis](/2023/Images/ball-wheel-on-chassis.jpg)

This wheel will let the robot balance and move without dragging, while still being able to spin on the spot.

<br>

**Task 7:** Put the shaft adapters on both motors.

Make sure the flat side of the shaft aligns with the flat side inside the adapter.

![shaft-adapter](/2023/Images/shaft-adapter.jpg)

These adapters are needed to use the small motor shaft with these particular wheels.

<br>

**Task 8:** Put the wheels on the motor shafts.

![wheels-going-on](/2023/Images/wheels-going-on.jpg)

This might require some force, so be careful not to break anything.

![almost-finished-robot](/2023/Images/almost-finished-robot.jpg)

You're now done with the mechanical assembly (apart from a battery holder)! Next we'll look at using a breadboard to add some more functionality.

<br>

## Part 2: Using a breadboard

Before we begin with the breadboard, lets check that our motors are wired the right way around. Plug in a battery or USB and press the "DFU" button, like at the end of the soldering section. Both the wheels should rotate forwards.

![wheel-directions](/2023/Images/wheel-directions.png)

If one or both of the wheels spin backwards instead, you will need to flip the motor wires around.

Taking off a wheel can make this a lot easier.

![swapping-wheel-directions](/2023/Images/swapping-wheel-directions.png)

**Task 9:** Make sure the wheels spin in the correct directions.

<br>

The DFU button on the Arduino is actually connected to the pin D2. We can see this by building a simple circuit.

The voltage on D2 is normally 3.3V, but when the "DFU" button is pressed, the voltage goes to 0V. We call this "active low" since an action is only registered when the voltage is low (0V). "Active high" is the opposite, where, for example, pressing a button makes the voltage go high (3.3V).

![LED-on-breadboard-schematic](/2023/Images/LED-on-breadboard-schematic.png)

You should choose a suitable resistor by assuming the LED has a forward voltage of 2V, and a current of 5mA is enough to light it up.

**Task 10:** Calculate the value of resistor you need.

Remember:
$$V = IR$$

You can find the solution [here](#task-10-answer).

<br>


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
>![jumper-wires](/2023/Images/jumper-wires.jpg)
>
>Since both the Arduino and the breadboard have female sockets, we will need to use male-to-male wires to connect them together.
>
>You can find jumper wires in the "Jumper Wires" box.
>
>![jumper-wires-box](/2023/Images/jumper-wires-box.jpg)
><br>


**Task 11:** Build the circuit from task 10 on a breadboard using jumper wires, and test whether the LED lights up as it should.

Resistors and LEDs are normally in the spinny component tower.

![breadboard-right-and-wrong](/2023/Images/breadboard-right-and-wrong.png)

![led-circuit-off](/2023/Images/led-circuit-off.jpg)

![led-circuit-on](/2023/Images/led-circuit-on.jpg)

> **Polling vs Interrupts**
>
>You may notice that the LED on the Arduino already is slower to respond to the button press than your new LED.
>
>This is because the one on the board checks every 100ms if the button is pressed and turns the LED on if it is. Therefore there is up to a 100ms delay on the built in one. This is the downside of what's known as [polling](https://en.wikipedia.org/wiki/Polling_(computer_science)).
>
>A better method is to use [interrupts](https://en.wikipedia.org/wiki/Interrupt), which stop the CPU to run a specific bit of code when they are triggered.
><br>

<br>

Next we'll look at how to add our own button to make the robot turn.

In the default code, pin D6 is turn left, and pin D7 is turn right.

[INSERT SWITCH CIRCUIT]




<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

# Task 10 answer

3.3V - 2V = 1.3V across the resistor.

V = IR

So R = V/I = 1.3V / 0.005A = 260Ω

However anything between 200Ω and 1000Ω will work fine.