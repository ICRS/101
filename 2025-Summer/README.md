# 2025 Summer Robotics 101


## Assembly
### Part 1: Assembly

You will need a few components to complete the chassis of your robot, so make sure you collect the components in the table below either at the start.

| Component   | Quantity    |
| ----------- | ----------- |
| M3 x 8mm    | 12          |
| M3 x 16mm   | 4           |
| M3 Hex Nuts | 4           |
| M3 Spacers  | 4           |
| Chassis     | 1           |
| Breadboard  | 1           |
| Wheels      | 2           |
| Shaft adaptors | 2        |
| Ball wheel  | 1           |
| Motor Brackets    | 2          |
| Battery Holder    | 1          |
| Breadboard Holder    | 1          |
| USB A to USB C Cable   | 1          |
| ESP | 1 |
| Motor Driver | 1 |
| Motors | 2 |

<br>

**Task 0:** Collect components in the table above.

![all-components-2](/2024-Autumn/images/all-components-2.jpg)

<br>

**Task 1:** Place the breadboard in the breadboard holder and attach it to the chassis using two 8mm screws. Note that the holes in the 3D printed parts are designed to be tight. 

![breadboard](/2024-Autumn/images/breadboard.jpg)

<br>

**Task 2:** Attach the ball wheel onto the chassis, note that two nuts will need to be used on the bottom to secure it in place.

![ball-wheel](/2024-Autumn/images/ball-wheel.jpg)

<br>

**Task 3:** Attach the battery holder to the chassis using two more screws.

![battery-holder](/2024-Autumn/images/battery-holder.jpg)

<br>

**Task 4:** For this step you DO NOT need to unwire your motors and motor driver.

Align the two 3D printed washers with the requisite holes.

![washers](/2024-Autumn/images/washers.jpg)

Next fit four screws (use the 16 mm screws here) in the holes adjacent to the heatsink on the motor driver. Align this with the washers and lower it into place. Secure it in place by using two nuts on the opposite side. Ensure the heatsink is nearest the end of the robot.

![motor-driver](/2024-Autumn/images/motor-driver.jpg)

<br>

**Task 5:** Fit the motor brackets over the motors and secure these to the chassis using two screws for each. Ensure they are mounted to the top side of the chassis. Note that the screws should go through the bottom of the chassis.

![mounted-motor](/2024-Autumn/images/mounted-motor.jpg)

<br>

**Task 6:** Slide the shaft adapters over the motor shafts. Then attach the wheels to the shaft adapters. Note that this requires some force, be careful not to damage any parts of the robot.

![shaft-adapter](/2024-Autumn/images/shaft-adapter.jpg)

<br>

**Task 7:** Your robot is almost assembled, fit the 9V battery into the holder and connect it to the motor driver.

![9v-battery](/2024-Autumn/images/9v-battery.jpg)

### Part 2: Wiring

You'll now need to add some wires to connect the motor driver and battery to the microcontroller.

**Task 8:** Connect the battery wires.

Connect the ground wire (the black one) to the negative strip of the breadboard and the positive wire (the red one) to the +12V input of the motor driver as shown. If you don't understand how a breadboard works then don't worry, it'll be explained in the other half of this session. Just follow along with the photos!

![l298n](/2025-Winter/Images/wiring_diagram.png)

![power-connections](/2025-Winter/Images/wiring_image.jpg)

**Task 9:** Connect the microcontroller power.

Connect the +5V of the motor driver to the VBUS pin of the microcontroller using a male to male jumper wire. Then connect the microcontroller ground (GND) to the negative strip of the breadboard.

**Task 9:** Connect the microcontroller signal wires to the motor driver.

The order here does matter:

| Motor pin | Microcontroller pin |
|-|-|
| Input1 | GPIO4 |
| Input2 | GPIO3 |
| Input3 | GPIO2 |
| Input4 | GPIO1 |

Make sure to use male to female jumper wires.

**Task 10:** Check it works.

You're almost done, the next step is to get a battery from a committee member and plug it into the robot.

You can then check it works by turning it on with the switch from earlier and pressing the button labelled "0" on the microcontroller.

If the wheels don't turn then check your connections and ask a committee member to help.

<br>

## Coding

**Task 1** Open Arduino IDE

**Task 2** Open the MotorControl Example Script

Goto Files -> Examples -> ICRS 101 -> MotorControl
![location](/2025-Summer/Images/location.png)

**Task 3** Flash the robot

Plug the microcontroller into the laptop using the usb cable.

Select the XIAO_ESP32C3 as shown below
![select-board](/2025-Summer/Images/select-board.png)

Then press this button to flash
![flash](/2025-Summer/Images/flash.png)

**Task 4** Modify the motor pins definitions
In the MotorControl code modify the pins so that the rover drives forwards, turns left, turns right and then goes backwards.

Swap the pin definitions around (e.g. swap 3 & 4) to get the wheel to spin the other way.

![pin-def](/2025-Summer/Images/pin-def.png)

Remember the correct motor pin configuration as it is needed for the next step.

**Task 5** Flash robot with robot code
Open the robot code from the same example menu where the MotorControl code was found as in step 2.

Open the serial monitor (ctrl + shift + m).

Flash the robot code and you will see a mac address output in the serial monitor window. It should be a string of 12 letters and numbers.

Take a note of this as this is needed for the next step.

**Task 6** Flash the controller
Modify the broadcastAddress[] in the controller code.
Take the mac address you found in the previous step and copy it across splitting it up into pairs to put into the broadcastAddress[]
![controller](/2025-Summer/Images/controller.png)

Then flash the code as before to the controller.

**Task 7** You should now be able to drive the rover around using the controller
