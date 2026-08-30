extends CharacterBody2D

const SPEED = 300.0

func input_control():
	var direction = Vector2()
	
	if Input.is_action_pressed("player_move_up"):
		direction.y -= 1
		direction.x = 0
		$Anim.play("move_up")

	if Input.is_action_pressed("player_move_down"):
		direction.y += 1
		direction.x = 0
		$Anim.play("move_down")

	if Input.is_action_pressed("player_move_left"):
		direction.x -= 1
		direction.y = 0
		$Anim.play("move_left")

	if Input.is_action_pressed("player_move_right"):
		direction.x += 1
		direction.y = 0
		$Anim.play("move_right")
		
	if !Input.is_action_pressed("player_move_up") and !Input.is_action_pressed("player_move_down") and !Input.is_action_pressed("player_move_left") and !Input.is_action_pressed("player_move_right"):
			$Anim.set_frame_and_progress(1, 0)
	
		
	
	
	velocity = direction * SPEED
	
func  _physics_process(delta: float) -> void:
	input_control()
	move_and_slide()
