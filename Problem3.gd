extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mouse = get_viewport().get_mouse_position()
	
	# Note: Once you've added the sprite to the screen, you can use the $Icon syntax to reference it in the code
	
	# Write a line of code here that will rotate the $Icon to point to the mouse cursor
	# You can use the atan2 function,  the Vector2 angle_to_point function, or the  Node2D look_at function
	# $Icon.rotation = .....
	
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		# Write a line of code here such that pressing the mouse button will move the $Icon sprite
		# in the direction if the mouse position
		pass
		
