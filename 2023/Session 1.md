<style>
    .howto {
        background-color: #AFCCFF;
    }
    .extra {
        background-color: #FFAFAF;
    }
</style>

[Mechanical title]

[Intro]
Outline goals for robot
Show diagram of whole system (to be referred back to).

Tasks:

* Soldering:
    * 3 Screw terminals, LED, capacitor
        * LED polarity
        * Capacitor polarity
    * Motors
    * Switch
    * Extra: servo pin headers & heat shrink

* Assembly:
    * Chassis
    * Extra: ?

[3D modelling intro]

[Download Arduino before next session]

# Session 1: Assembly & Mechanical

### Contents
* [Soldering](#soldering)
* [Assembly](#assembly)

### Introduction

[ADD IMAGE OF ALL PARTS ON TABLE]

Sections labelled "**HOW TO**" explain certain techniques, and can be skipped if you are comfortable with them.

If you are going fast then feel free to do the sections labelled "**EXTRA**", otherwise they are fine to skip or leave to the end.

## Soldering

There are several parts of the robot that need to be soldered before we can begin assembling the chassis.

If you are unfamiliar with soldering, ask your group members to see if they can explain, otherwise check out the guide below.

<div class="howto">

---
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**HOW TO: Soldering**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SOLDERING HOW TO]

---
</div>

With that out of the way, there are 3 main areas that need to be soldered:
* Motors
* ICRS Arduino Uno
* Power switch

#### Motors:

Each motor has 2 contacts that we need to connect wires to. Passing a current through the wires will then cause the motor to spin.

[IMAGE OF MOTOR AND WIRE]

Cut two lengths of wire to about [INSERT LENGTH HERE] cm and strip about 2mm to 4mm of insulation from the end. 





<div class="howto">

---

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**HOW TO: Wire Cutting and Stripping**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;There are a number of tools in the "Cutty" section of the blue tool drawer that you can use to cut and strip wire.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[PICTURE OF CUTTY DRAW & WIRE STRIPPERS]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We'll be using the yellow one this time.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Take the tool and put your wire in the slot labelled [INSERT LABEL SIZE HERE] as shown below.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[PICTURE OF WIRE IN STRIPPERS]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[PICTURE OF STRIPPED WIRE]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Then squeeze and pull your wire out, and it should be nicely stripped.

---
</div>

Pass the ends through the contacts as shown below.

[IMAGE OF MOTOR WITH WIRE IN CONTACTS]

Bending the ends of the wires can be helpful to make them stay in place while soldering. 

#### Power switch:

A power switch will come in useful to turn the robot on and off without having to unplug the battery.

[SWITCH SIDE BY SIDE WITH CIRCUIT DIAGRAM]

<div class="extra">

---

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**EXTRA: Heat Shrink**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You can add heat shrink over an exposed solder joint to make sure there is no risk of a short circuit. This would be useful for both the motor and switch you just soldered.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To do this find the box labelled "Heat Shrink" [FINISH EXPLAINATION]

---
</div>

#### Arduino Uno:

## Assembly







You now have an (almost) fully built 101 robot! We'll learn how to make it move in the next session.