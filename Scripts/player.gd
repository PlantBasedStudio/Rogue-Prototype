extends CharacterBody2D

var speed = 200.0
var direction := Vector2.ZERO


func _ready():
	pass

func _physics_process(delta):
	velocity = direction * speed
	move_and_slide()
	look_at(get_global_mouse_position())


func _input(event: InputEvent):
	#nouvelle méthode pour chopper les 4 axes
	direction = Input.get_vector("gauche","droite","haut","bas")
	
