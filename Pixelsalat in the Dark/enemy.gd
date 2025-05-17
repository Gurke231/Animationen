class_name enemy
extends CharacterBody2D
var player_chase = false
var player = null
var speed = 80 
var health = 100
var player_inattack_zone = false
var damage = 30




func _physics_process(delta):
	#deal_with_damage()
	update_health()
	
	if player_chase:
		position += (player.position - position)/speed

func _on_detection_area_body_exited(body: Node2D) -> void:
	player = null
	player_chase = false
	print  ("stop playerchase")


func _on_detection_area_body_entered(body: Node2D) -> void:
	player = body
	player_chase = true
	print ("start playerchase")
	
	
	
func update_health():
	var healthbar = $healthbar
	
	healthbar.value = health
	
	
		
	
	
	
	if health >= 100:
		healthbar.visible = false
	else:
		healthbar.visible = true
		
		
func enemy():
	pass

func _on_hit_area_body_entered(body: Node2D) -> void:
	print ("player is taking dmg")

	

func _on_area_2d_attack_hitbox_body_entered(body: Node2D) -> void:
	print ("dmg 20")

func _OnHit(damage):
	health -= damage 


#func _on_timer_2_timeout() -> void:
	health -= 30
