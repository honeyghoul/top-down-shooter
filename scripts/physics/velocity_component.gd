extends Node

var velocity : Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func accelerate_to(desired_velocity : Vector2, transition_speed : float) -> Vector2:
	var _new_velocity : Vector2
	_new_velocity = velocity * (1 - get_physics_process_delta_time() * transition_speed) + desired_velocity * (get_physics_process_delta_time() * transition_speed)
	return _new_velocity
