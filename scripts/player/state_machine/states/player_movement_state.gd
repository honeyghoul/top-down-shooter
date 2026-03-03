class_name PlayerMovementState
extends PlayerState

static var state_name = "PlayerMovementState"

func get_state_name() -> String:
	return state_name

func physics_process(_delta: float) -> void:
	#velocity_component.accelerate_in_direction(input_component.movement_input)
	movement_component.snap_move_in_direction(input_component.movement_input)
