extends CharacterBody2D

var speed = 300
var tick = 0

func get_input():
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_dir * speed

func _physics_process(delta):
	
	var t = Transform2D(0, global_position) #create Transform at current position
	t.translated(Vector2(0,-100)) #translate transform 100px upwards
	#t.translated_local(Vector2(0,-100)) #translate transform 100px upwards
	if test_move(t,velocity*delta): #test for collision according to transform
		print("circle")
	
	get_input()
	move_and_collide(velocity * delta)

