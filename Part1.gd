extends Node2D

export(DynamicFont) var main_font

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _draw():
	draw_circle(Vector2(0,0), 20, Color.red)
	draw_string(main_font, Vector2(50,50), "This circle is centered at (0,0)", Color.red)
	
	draw_circle(Vector2(get_viewport_rect().size.x / 2, get_viewport_rect().size.y / 2), 20, Color.green)
	draw_string(main_font, Vector2(get_viewport_rect().size.x / 2, get_viewport_rect().size.y / 2 + 50), "This circle is centered on the screen", Color.green)
	
	# HW1 - Problem 1
	# Draw a circle with color blueviolet which is centered along X axis, and the bottom is touching the bottom of the window
	
	draw_string(main_font, Vector2(0, get_viewport_rect().size.y - 50), "This circle is centered on the X, and touching the bottom of the screen", Color.blueviolet)
