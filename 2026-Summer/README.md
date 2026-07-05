# 2025 Summer Robotics 101


## Assembly

You will need a few components to complete the chassis of your robot. They should be within your kit however, if you are missing any items please let one of the ICRS people know.

| Component   | Quantity    |
| ----------- | ----------- |
| M3 Screw    | 4           |
| Chassis     | 1           |
| Breadboard  | 1           |
| Wheels      | 2           |
| O-rings      | 2           |
| Ball wheel  | 1           |
| Motor Brackets    | 2          |
| Battery Holder    | 1          |
| USB A to USB C Cable   | 1          |
| ESP | 1 |
| Motor Driver | 1 |
| Motors | 2 |
| Motor Cables   | 2      |
| Battery connector with switch   | 1      |
| Male to Male Jumper Wires| 2 |
| Female to Male Jumper Wires| 4 |

<br>

### **Task 0:** 
Check you have all the neccissary compoents inside of your kit.

![all-components-2](/2026-Summer/Images/Parts.png)

<br>

### **Task 1:** 
Find the motors, the motor cables (Black twisted wires) and the big red motor driver. Connect the cables into the motors. Place the other ends of the motor cables into the blue terminals on the motor driver and screw down to attach them. Give a gentle pull on the cables to confirm they are attached. 

![attch to MD 1](/2026-Summer/Images/Attach_motors.png)

<br>

### **Task 2:** Using the same method with the blue terminals, attach the red wire of the battery connector into the terminal on the left.

![attach to MD 2](/2026-Summer/Images/Attach_battery.png)

<br>

### **Task 3:** 
Get the 2 male to male jumper wires. In the middle of the blue terminls attach the black wire from the battery connector along with one of the male to male jumper wires. In the right terminal connect the remaining jumper wire and screw them to attach. Give both a gently pull to check they are connected securely. TOP TIP: The black wire and jumper terminal can be tricky to attach securely so it may help to twist the black wire around the jumper wire then screw them in to the terminal

![attach to MD 3](/2026-Summer/Images/Attach_jumpers.png)

<br>

### **Task 4:** 
Using the sticky tape on the bottom of the motor driver, stick it down onto the acrylic chasis. There should be an engraved square to help with its placement.

![attach MD to chassis](/2026-Summer/Images/palce_MD.png)

Next find the 2 motor brackets and the 4 m3 screws. Put the motor on the top and place the bracket over the top abd from below screw the screws into the holes in the motor brackets, this should securely fasten the motors to the acrylic chasis. Repeate for both motors.

![attach motors](/2026-Summer/Images/Screw_motors.png)

Stick the breadboard into the engraved square on the top side of the acrylic chasis and place the ESP32 computer so that the 2 rows of legs are either side of the channel down the middle of the breadboard.

![attach breadboard](/2026-Summer/Images/Attach_Bread.png)

<br>


### **Task 5:** 
Connect the battery wires.

Connect the ground wire (the black one) to the negative strip of the breadboard and the positive wire (the red one) to the +12V input of the motor driver as shown. If you don't understand how a breadboard works then don't worry, it'll be explained in the other half of this session. Just follow along with the photos!

![l298n](/2025-Winter/Images/wiring_diagram.png)

![wire](/2026-Summer/Images/Wires.png)

### **Task 6:** 
Connect the microcontroller power.

Connect the +5V of the motor driver to the VBUS pin of the microcontroller using a male to male jumper wire. Then connect the microcontroller ground (GND) to the negative strip of the breadboard.

### **Task 7:** 
Connect the microcontroller signal wires to the motor driver.

The order here does matter:

| Motor pin | Microcontroller pin |
|-|-|
| Input1 | GPIO4 |
| Input2 | GPIO3 |
| Input3 | GPIO2 |
| Input4 | GPIO1 |

Make sure to use male to female jumper wires.


You'll now need to add some wires to connect the motor driver and battery to the microcontroller.

### **Task 8:** 

Stick the battery hloder and the ball wheel onto the base of the chasis using the sticky tape. The battery holder should have its open edge in line with the back edge.

![attach Ball ](/2026-Summer/Images/Add_ball.png)

### **Task 9:** 
Check it works.

You're almost done, the next step is to get a battery and plug it into the robot.

You can then check it works by turning it on with the switch from earlier

If the wheels don't turn then check your connections and ask a committee member to help.

![attach to MD 2](/2026-Summer/Images/Batt.png)

<br>

## Coding

### **Task 1** 
Open Arduino IDE

### **Task 2** 
Open the MotorControl Example Script

Goto Files -> Examples -> ICRS 101 -> MotorControl
![location](/2025-Summer/Images/location.png)

### **Task 3** 
Flash the robot

Plug the microcontroller into the laptop using the usb cable.

Select the XIAO_ESP32C3 as shown below
![select-board](/2025-Summer/Images/select-board.png)

Then press this button to flash
![flash](/2025-Summer/Images/flash.png)

### **Task 4** 
Modify the motor pins definitions
In the MotorControl code modify the pins so that the rover drives forwards, turns left, turns right and then goes backwards.

Swap the pin definitions around (e.g. swap 3 & 4) to get the wheel to spin the other way.

![pin-def](/2025-Summer/Images/pin-def.png)

Remember the correct motor pin configuration as it is needed for the next step.


### **Task 5**
Download the Dabble- Bluetooth Controller app it can be found by scanning this qr code with your phone and folowing either the App Store or Play store buttons.

![Dabble QR](/2026-Summer/Images/adobe-express-qr-code.png)

### **Task 6** 
Open the Dabble code from the same example menu where the MotorControl code was found as in step 2.

Update the motor pins as was done in the previous task and give it a unique bluetooth name.
![Code](/2026-Summer/Images/Code.png)


### **Task 7** 
Flash the Rover as was done in task 3. Once the code has been flashed, the white cable conecting the computer to the rover can be removed. You will now be using the switch to turn the rover on and off.


### **Task 8** 
With the switch turned on, open the dabble app on your phone. Click the Gamepad square, then click the top right plug symbol. Find your chosen bluetooth name and click it to connect. You should now have a remote controlled robot! If the rover does not move in the direction you think it should revisit **Task4** reconnecting to the robot with the cable whenever you want to re-flash the code.

![Code](/2026-Summer/Images/App.png)

# What Is Next?
... Race time. Now is your opportunity to get creative, decorate your robot and practice driving it around. At the end of the day we will do a race and crown the champions of the ICRS Grand Prix!
