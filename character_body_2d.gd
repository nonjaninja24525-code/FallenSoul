extends CharacterBody2D

const SPEED = 300.0

func input_control():
	var direction = Input.get_vector("player_move_left", "player_move_right", "player_move_up", "player_move_down")
	velocity = direction * SPEED
	
func  _physics_process(delta: float) -> void:
	input_control()
	move_and_slide()
