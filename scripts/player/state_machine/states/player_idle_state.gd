class_name PlayerIdleState
extends PlayerState

static var state_name = "PlayerIdleState"

func get_state_name() -> String:
	return state_name

func physics_process(_delta: float) -> void:
	if player.input_component.movement_input:
		state_machine.set_state(PlayerMovementState.state_name)
