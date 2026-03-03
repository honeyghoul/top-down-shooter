class_name MovementComponent
extends Node

@export var velocity_component : VelocityComponent

@export_range(0,1) var min_speed_coefficient : float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if !velocity_component:
		push_error("This node requires a velocity component for intended behaviour.")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func snap_move_in_direction(direction: Vector2):
	velocity_component.velocity = direction * velocity_component.max_speed * min_speed_coefficient
