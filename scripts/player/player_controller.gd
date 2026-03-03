class_name PlayerController
extends CharacterBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var state_machine: StateMachine = $StateMachine
@onready var sprite: Sprite2D = $Sprite2D
@onready var input_component: InputComponent = $InputComponent
@onready var movement_component: MovementComponent = $MovementComponent
@onready var velocity_component: VelocityComponent = $VelocityComponent

func _ready() -> void:
	var states: Array[State] = [PlayerIdleState.new(self), PlayerMovementState.new(self)]
	state_machine.start_machine(states)

func _physics_process(_delta: float) -> void:
	velocity_component.move(self)
