extends CharacterBody2D

var SPEED = 200

func player_movement_control():
	var direction = Input.get_vector("player_move_left", "player_move_right", "player_move_up", "player_move_down")
		
	if direction.x <= -0.5:
		$Anim.play("move_left")
	elif direction.x >= 0.5:
		$Anim.play("move_right")
	elif direction.y <= -0.5:
		$Anim.play("move_up")
	elif direction.y >= 0.5:
		$Anim.play("move_down")
		
	if direction == Vector2.ZERO:
			$Anim.set_frame_and_progress(1, 0)
			
	velocity = direction * SPEED
	
func  _physics_process(delta: float) -> void:
	player_movement_control()
	move_and_slide()
