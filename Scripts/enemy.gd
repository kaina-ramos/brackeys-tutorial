extends Node2D

const SPEED = 40

var direction = 1

@onready var rc_right: RayCast2D = $RC_Right
@onready var rc_left: RayCast2D = $RC_Left
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float) -> void:
	if rc_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if rc_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += direction * SPEED * delta
