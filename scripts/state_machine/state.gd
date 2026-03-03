class_name State

# Called when the state machine transitions to this state
func enter() -> void:
	pass

# Called when the state ends
func exit() -> void:
	pass

# Called every frame. 
func process(_delta: float) -> void:
	pass

# Called every physics frame. 
func physics_process(_delta: float) -> void:
	pass

func get_state_name() -> String:
	push_error("Method get_state_name() must be defined.")
	return ""
