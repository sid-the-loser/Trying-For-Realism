# Code referenced from: https://youtu.be/xIKErMgJ1Yk

extends Node
class_name UserControlled

@export_category("Required variables")
@export var character_body: CharacterBody3D
@export var head: Node3D

@export_category("Movement related variables")
@export var JUMP_VELOCITY = 4.5
@export var WALKING_SPEED = 8.0
@export var CROUCH_DEPTH = 0.5
@export var MOUSE_SENSE = 0.4
@export var LERP_SPEED = 10.0

var current_speed = 8.0
var direction = Vector3.ZERO
var head_will_collide = false
var can_move = false

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
