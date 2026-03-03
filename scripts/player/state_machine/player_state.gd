class_name PlayerState
extends State

var player: PlayerController
var animation_player: AnimationPlayer
var state_machine: StateMachine
var sprite: Sprite2D
var input_component: InputComponent
var movement_component: MovementComponent
var velocity_component: VelocityComponent

func _init(player_controller: PlayerController) -> void:
	player = player_controller
	animation_player = player.animation_player
	state_machine = player.state_machine
	sprite = player.sprite
	input_component = player.input_component
	movement_component = player.movement_component
	velocity_component = player.velocity_component
	
