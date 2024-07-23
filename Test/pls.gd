extends CharacterBody2D
var speed = 300

func get_input():
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_dir * speed

func _physics_process(delta):
	var print = false
	if Input.is_action_just_pressed("ui_accept"):
		print = true
		
	var t = Transform2D(0, global_position) #create Transform at current position
	if print:
		print(t)
	t.translated(Vector2(0,-100)) #translate transform 100px upwards
	#t.translated_local(Vector2(0,-100)) #gives the same results as above
	if print:
		print(t)
	if test_move(t,velocity*delta): #test for collision according to transform
		print("square")
	
	get_input()
	move_and_collide(velocity * delta)
	print = false
