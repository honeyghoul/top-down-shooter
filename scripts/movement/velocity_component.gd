class_name VelocityComponent
extends Node

@export var max_speed: float
@export var acceleration_coefficient: float

var velocity: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func accelerate_to_velocity(target: Vector2) -> void:
	velocity = velocity.move_toward(target, acceleration_coefficient)

func accelerate_in_direction(direction :Vector2) -> void:
	accelerate_to_velocity(direction * max_speed)

func decelerate() -> void:
	accelerate_to_velocity(Vector2(0,0))

func set_max_speed(new_speed: float) -> void:
	max_speed = new_speed

func move(character_body: CharacterBody2D) -> void:
	character_body.velocity = velocity
	character_body.move_and_slide()
