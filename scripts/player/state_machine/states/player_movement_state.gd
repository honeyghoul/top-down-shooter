class_name PlayerMovementState
extends PlayerState

static var state_name = "PlayerMovementState"

func get_state_name() -> String:
	return state_name

func physics_process(_delta: float) -> void:
	movement_component.snap_move_in_direction(input_component.movement_input)
	
	# Transitions
	if !input_component.movement_input:
		state_machine.set_state(PlayerIdleState.state_name)
