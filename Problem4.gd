extends Node2D

var animation_global_time
const animation_cycle_time = 6.0

func _ready():
	# Keeps track of our global animation time
	animation_global_time = 0.0

# From easings.net [Hint: Check out this site]
# Easing functions specify the rate of change of a parameter over time.
# Objects in real life don’t just start and stop instantly, and almost never move at a constant speed.
# When we open a drawer, we first move it quickly, and slow it down as it comes out. 
# Drop something on the floor, and it will first accelerate downwards, and then bounce back up after hitting the floor.

func easeOutCubic(x):
	# Input: x, goes from 0.0 to 1.0
	# Output: goes from 0.0 to 1.0, but with a cubic ease-out function applied
	# Your Job #1: implement a cubic easing function, so that the initially the output moves very quickly, then slows down
	return x
	
func easeInCubic(x):
		# Input: x, goes from 0.0 to 1.0
	# Output: goes from 0.0 to 1.0, but with a cubic ease-in function applied
	# Your Job #2: implement a cubic easing function, so that the initially the output moves very slowly, then speeds up
	return x


func _process(delta):
	# Update the total time by the delta time step on each frame
	animation_global_time += delta
	
	# fmod is like the mod "%" function, but it works on floating point numbers
	var local_time = fmod(animation_global_time, animation_cycle_time)
	var local_animation = local_time / animation_cycle_time

	# animation_global_time goes from 0.0 to infinity, counting seconds
	# local_time counts continously from 0.0 to 6.0 (the animation_cycle_time) in an infinite loop
	# local_animation counts continously from 0.0 to 1.0 in an infinite loop
	
	if local_animation < 0.5:
		var position = local_animation / 0.5
		$LinearIcon.position.x = $LinearIcon.texture.get_width() / 2 + position  * (get_viewport_rect().size.x - $LinearIcon.texture.get_width())
		$CubicIcon.position.x = $CubicIcon.texture.get_width() / 2 + easeOutCubic(position)  * (get_viewport_rect().size.x - $CubicIcon.texture.get_width())
	else:
		var position = 1.0 - (local_animation - 0.5) / 0.5
		$LinearIcon.position.x = $LinearIcon.texture.get_width() / 2 + position * (get_viewport_rect().size.x - $LinearIcon.texture.get_width())
		$CubicIcon.position.x = $CubicIcon.texture.get_width() / 2 + easeInCubic(position) * (get_viewport_rect().size.x - $CubicIcon.texture.get_width())
