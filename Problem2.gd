extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func draw_arrow(from: Vector2, to: Vector2, color: Color):
	var dir = (to - from).normalized()

	# Problem 2: Complete this function to draw an arrow that start at the "from" Vector, and points to the "to" vector
	# It should include a line, as well as an arrowhead which indicates the direction
	# The arrowhead can be a simple triangle, or a more fancy shape, but you should accomplish this using the
	# draw_line and/or draw_polygon Godot functions
	
	# Your code here

func _draw():
	var screen = get_viewport_rect().size
	
	draw_arrow(Vector2(screen.x / 2, 20), Vector2(screen.x / 2 + screen.x / 4, screen.y / 2), Color.green)
	draw_arrow(Vector2(screen.x / 2 + screen.x / 4, screen.y / 2), Vector2(screen.x / 2 - screen.x / 4, screen.y / 2), Color.red)
	draw_arrow(Vector2(screen.x / 2 - screen.x / 4, screen.y / 2), Vector2(screen.x / 2, 20), Color.blueviolet)
	
	draw_arrow(Vector2(screen.x / 2 - screen.x / 4, screen.y / 2 + screen.y / 4), Vector2(screen.x / 2 + screen.x / 4, screen.y / 2 + screen.y / 4), Color.darkorange)
	
