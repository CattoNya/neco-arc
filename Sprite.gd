extends Sprite

var speed = 400
var angular_speed = PI

#func _ready():
#	self.scale += Vector2(1, 1)

func _process(delta):
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1

	rotation += angular_speed * direction * delta

	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.DOWN.rotated(rotation) * speed

	position += velocity * delta

#func _process(delta):
#	rotation += angular_speed * delta
#	var velocity = Vector2.UP.rotated(rotation) * speed
#	position += velocity * delta

#func _on_Button_pressed():
#	set_process(not is_processing())

#func _ready():
#	var angle = Vector2(1, 0)
#	angle = angle.angle_to(Vector2(0, 1))
#	print(angle)

#class no:
#	var b = 3
#
#class genshin:
#	var a = no.new()
#
#func _ready():
#	var meow = genshin.new()
#	print(meow.a.b)

#func test() -> int:    #func type
#	var yes:int = 5     #fixed type
#	return yes 


