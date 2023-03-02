# advproghw1
HW1 for Advanced Programming Spring 2023

The point of this assignment is to learn GDScript. GDScript has similar syntax to Python, but it's optimized for real time applications like game programming.
You will solve a few problems that will mostly go over the syntax of GDScript, plus practicing some 2D vector math which will be useful in your game projects later.


## Instructions

1. Download this repository as a zip file, and open it with Godot 3.5.1.

1. In the editor, you should see each problem as a Scene within the filesystem list of the left. Each problem is self-contained, so start with the Problem1, then click on the "Script" view to see the attached code.

1. You can view the current scene by pressing the F6 key on your keyboard.

1. The Godot docs are great, Control + Click on anything in the code editor to read more of the docs.

1. Submission instructions: Zip up your project folder and send it in via Canvas.

## Problems

#### Problem 1

We will start with some simple static drawing commands. Please draw a circle that's centered on horizontally, and attached to the bottom of the screen as in the screenshot below.

You can use the `get_viewport_rect()` function to get a [Rect2](https://docs.godotengine.org/en/stable/classes/class_rect2.html) which tells you the width and height of the screen. Then, write another call to `draw_circle` to accomplish your task.

![image](https://user-images.githubusercontent.com/392417/222298995-6a618cf6-c870-4726-b9ab-f300cd741a4e.png)

#### Problem 2

Let's make a reusable function to draw an arrow on the screen.

Your job is to implement the `draw_arrow` function so that the "Problem2" scene render looks approximately as below:

The arrow should include a line, as well as an arrowhead which indicates the direction to arrow is pointing
The arrowhead can be a simple triangle, or a more fancy shape, but you should accomplish this using the
draw_line and/or draw_polygon Godot functions. Don't just draw a texture! We want a nice vector-graphic here.

![image](https://user-images.githubusercontent.com/392417/221946587-5d50164c-5098-4e8a-a4a4-0795498602b2.png)

#### Problem 3

Now, let's start to use the editor to draw a Sprite on the screen. A Sprite is basically any moving texture or character that's seperate from the background.

Step 1. Open the Problem3.tscn file, and go to the "2D" mode in the editor. You should see that there is an image showing in the editor already.

![image](https://user-images.githubusercontent.com/392417/221952076-77a6f014-fa6c-4c81-a109-87a6c0dec9f5.png)

Step 2. If you run the scene (F6), you wil see that the icon rotate to "look at" your mouse cursor.

Step 3. Open the Problem3.gd code file, you will see that this is implemented using the Godot built-in "look_at" function.

Your job is to comment out the `$Icon.look_at(mouse)` code, and write your own version!

![image](https://user-images.githubusercontent.com/392417/221955191-a1736763-c25a-4519-82e5-f57952c63cea.png)

Consider the image above. By default, Godot is going to track the position and rotation of a Sprite from the center of the image. The red dot represents the mouse pointer position. These two points form a right triangle, with an angle θ between them.

From trigonometry, what is the $tan(\theta)$?

...

That's right! SOH CAH TOA people!

$tan(\theta) = \frac{y}{x}$

What we want to do is find θ, given y and x which we know. To do that, you will want to use the inverse tangent, or arctan function.

$arctan(\frac{y}{x}) = \theta\$

To calculate $arctan$, Godot offers two functions [`atan`](https://docs.godotengine.org/en/3.5/classes/class_%40gdscript.html#class-gdscript-method-atan) [`atan2`](https://docs.godotengine.org/en/3.5/classes/class_%40gdscript.html#class-gdscript-method-atan2)

They both will return the angle you are looking for, `atan` takes one parameter, the fraction `y/x`, while `atan2` takes two parameters, `y` and `x` seperately. `atan2` works better!
 because it avoid the nastiniess around dividing something by zero.

Step 4. Once you make the sprite rotate to face the mouse pointer, make it move towards the mouse when you press the left mouse button.

#### Problem 4

Easing functions are a great way to make your animations more dynamic and engaging. Nothing in real life just moves linearly, with a constant speed, from one point to another.

Check out Problem4.tscn in the project, and implement the cubic ease-in and ease-out so that you get a nice smooth animation like the one in the screenshot below.

![Recording 2023-03-02 at 11 24 59](https://user-images.githubusercontent.com/392417/222531404-206bbbf9-10cc-4f1c-b844-d737c9ccdc66.gif)

