## Part 2: Wiring

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

## You're Done!!!



<br>

