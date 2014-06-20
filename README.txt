CONTENTS OF THIS FILE
	NOTE: Most important information is contained between asterisk lines
---------------------
 * Introduction
 * Requirements
 * Program Elements
 * Instructions
 * FA Q
 
 INTRODUCTION
------------
This program consists of a user 
interactive missile defence/diversion through use
of 3-Dimensional trajectory manipulation. Including
in this program will be the visualization of 
missile elements, a visual explosion element,
potentially human inhabited/cities, and a shield 
to “protect” the objects(buildings). 

*A missile has just accidentally been set off. You only have enough time
to slightly change the path of the missile remotely before it explodes. 
You do however has a missile defence shield that you can put up at a
moments notice. You just have to make sure it is placed so that the nuke
will hit it instead of a building. Input the correct launch angle, and 
latitude for the nuke so that it does not hit a building... or make sure
that it will hit the shield placements which you can input. Do this and
you save everyone!*

 REQUIREMENTS
------------
MATLAB 2012 version or higher

Before running the program, make sure that both the mainFile and the
NUKE_DA_CITY function are included in the directory

 PROGRAM ELEMENTS
 ------------
 -USER INPUT
The program allows users to input a missile's angle, and missile's
latitude, as well as a shield's longitude through a dialogue box. 
***This is an advanced UI element of our program***

 -Missile Trajectory Path
The missile will translate on a projectile trajectory 
airtime = (v0*sin(angle)+sqrt(((v0*sin(angle))^2)+(2*9.8*0)))/9.81
longitudinal translation = linspace(0,airtime,frames)
latitudinal translation = -(x0+(v0*cos(angle)*long))+constant
altitude translation = (y0+(v0 .*long.*sin(angle)) - ((9.81.*(long.^2))/2))-constant
	v0: initial velocity
	x0: initial latitudinal position
	y0: initial longitudinal position
	long: interval of translation
	airtime: total time of flight
	angle: initial launching angle
The missile has advanced 3-dimensional implementation of these equations.
In order to allow the missile to look as though it is rising and falling,
it rotates along its parabolic path to orient either facing up when moving
upward, or down when moving downward. 
************
This is the one of the advanced algorithms used in the program,
and also accounts for the translational and rotational element.
************

 -Explosion Element 
Upon the missile object hitting either the shield, a building, or the 
ground, the missile will be engulfed by a sphere which scales up to 50x
its original size.
************
This accounts for the scaling element in our program.
************

 -Shield Element
Given a user input latitude, a rectangular shield object is displayed with
at an altitude of 2, a width of 4, and a length of 15.

 -Town Objects
Objects representing buildings were created in a cubicle shape. However,
because there is no pre-defined MATLAB function which creates cubes, this
program implements a system in which 4 walls are created in order to give
the appearance of a cube.
 
 -Background
The background of the program is set to a gray shade in order for all
created objects to appear vibrant and visible throughout the duration of
program's animation.
************
This accounts for implementation of advance visuals.
************

-Collision Detection
The program continuously checks for the moment the altitude of the nuke is
approximately the same as the height of the shield. If the 2 values are close,
it means the nuke either reaches that height while flying upward or while
falling downward. The program then checks whether if the x and y coordinates 
of the nuke is inside the range of the width and the length of the shield. If
they are inside the range, it means the nuke touches the shield. The program
immediately quits the loop and stops the nuke from falling any further and
cause the explosion.
 On the other hand, if the nuke does not hit the shield, it keeps on falling
until its final altitude, then the explosion scales up and destroys one or more
buildings. The program checks the position where the nuke lands, and decides 
whether one building, 2 buildings, or none is destroyed. The buildings are
destroyed after the explosion has gone off half of its time.
************
This accounts for another implementation of advanced algorithm.
************
 
 -Animation Function (NUKE_DA_CITY)
Most of the programs animation takes place in a NUKE_DA_CITY function,
which carries out the overall animation in the program. There are many 
elements in this animation which could have be re-written as new functions
but in valuing simplicity and functionality over quantity, all functions
were implemented here
************
This accounts for function implementation.
************

 -Repeated running
Within the main program, the user is allowed to run the NUKE_DA_CITY 
function multiple times until they input and indicated that they would no
longer like to run the program.

 INSTRUCTIONS
------------
1. Press "RUN"
2. Input INTEGERS for dialogue box
	Missile angle: range of 60 to 90
	Missile latitude: range of -10 to 10
	Shield longitude: range of -7 to 7
3. Click "OK"
4. ENJOY ANIMATION 
5. Decide if you would like to play again
6. Enter y or n to decide to play again

 FAQ
------------
 -Why is this program so fun, cool and addictive?
A lot of effort was put into the incredible functionality of the program.
The program was created so that every who uses it may experience a
never before experienced enjoyment in life. 

 -How was this program created from a developers standpoint?
Well, there is a very simple equation which allows for the development of
any awesome program.
	NoSleep + EnergyDrinks + Luck + Patience + Google

