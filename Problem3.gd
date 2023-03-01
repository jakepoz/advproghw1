extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mouse = get_viewport().get_mouse_position()
	
	# The look_at function will rotate an object to point at another vector, it's built into Godot
	$Icon.look_at(mouse)
	
	# But how does it work?
	
	# Your job #1: Comment out the line which says "$Icon.look_at(mouse)" and write your own version
	# which uses the arctangent function
	
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		# Your job #2
		# Write a line of code here such that pressing the mouse button will move the $Icon sprite
		# in the direction of the mouse position
		pass
		
