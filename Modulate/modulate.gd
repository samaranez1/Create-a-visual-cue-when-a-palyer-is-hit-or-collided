#Demonstration changing the modulation of Sprite2D when it collided
extends CharacterBody2D

var speed = 300
var tween:Tween

func get_input():
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_dir * speed

func _physics_process(delta):
	#tween=create_tween()
	get_input()
	
	var collision =move_and_collide(velocity * delta)

	if collision:
		modulate()
func modulate():
	# Modulate the CanvasItem of Sprite2D
	tween=create_tween()
	tween.tween_property($Sprite2D,"modulate",Color.RED,1.0).set_delay(1.0)
	tween.tween_property($Sprite2D,"modulate",Color.MEDIUM_VIOLET_RED,1.0)	
	tween.tween_property($Sprite2D,"modulate",Color(1,1,1,1,),1.0)	
		
		
		
		
		
		
		
		

	
	
	
