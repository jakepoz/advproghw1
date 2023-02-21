extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var ball_pos = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	ball_pos += Vector2(90, 90) * delta
	
	# Need to call update to actually re-issue the draw commands
	update()

func draw_arrow(from, to, color):
	draw_circle(from, 5, color)
	draw_line(from, to, color, 3.0)
	
	var dir = (to - from).normalized()
	var head = 25
	
	draw_polygon([to, to - dir * head + dir.tangent() * head, to - dir * head - dir.tangent() * head, to], [color])
	

func _draw():
	draw_circle(ball_pos, 25, Color.greenyellow)
	draw_arrow(Vector2.ZERO, ball_pos, Color.black)
