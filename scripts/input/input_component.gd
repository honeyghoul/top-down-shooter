class_name InputComponent
extends Node2D

# Input Consts
const ACTION_LEFT: StringName = "left"
const ACTION_RIGHT: StringName = "right"
const ACTION_UP: StringName = "up"
const ACTION_DOWN: StringName = "down"
const ACTION_INTERACT: StringName = "action"

var movement_input: Vector2
var mouse_position: Vector2
var interact_pressed: bool
var roll_pressed: bool

# TODO:
# Move in direction being pressed
# If two opposite directions are pressed at the same time:
	# Move in the most recent direction pressed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	movement_input = Input.get_vector("left", "right", "up", "down")
	mouse_position = get_local_mouse_position() - position

func _unhandled_input(event) -> void:
	if event.is_action_pressed(ACTION_INTERACT):
		interact_pressed = true
