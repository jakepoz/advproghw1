# advproghw1
HW1 for Advanced Programming Spring 2023

The point of this assignment is to learn GDScript. GDScript has similar syntax to Python, but it's optimized for real time applications like game programming.
You will solve a few problems that will mostly go over the syntax, datatypes, patterns, and vector math which is common in Godot games.


## Instructions

1. Download this repository as a zip file, and open it with Godot 3.5.1.

1. In the editor, you should see each problem as a Scene within the filesystem list of the left. Each problem is self-contained, so start with the Problem1, then click on the "Script" view to see the attached code.

1. You can view the current scene by pressing the F6 key on your keyboard.

1. The Godot docs are great, Control + Click on anything in the code editor to read more of the docs.

1. Submission instructions: Zip up your project folder and send it in via Canvas.

## Problems

#### Problem 1

We will start with some simple static drawing commands. Please draw a circle that's centered on horizontally, and attached to the bottom of the screen as in the screenshot below.

You can use the `get_viewport_rect()` function to get a [Rect2](https://docs.godotengine.org/en/stable/classes/class_rect2.html) which tells you the width and height of the screen

![image](https://user-images.githubusercontent.com/392417/221939038-43c13a1b-4305-4d13-8191-e46c0814f700.png)

#### Problem 2

Let's make a reusable function to draw an arrow on the screen.

Your job is to implement the `draw_arrow` function so that the "Problem2" scene render looks approximately as below:

![image](https://user-images.githubusercontent.com/392417/221946587-5d50164c-5098-4e8a-a4a4-0795498602b2.png)
