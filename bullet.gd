extends Area2D
const speed = 300
var direction := 1

func _ready() -> void:
	pass
func _process(delta: float) -> void:
	position.x += speed * direction * delta
	add_to_group("bullets")
	
func move_to_initial_position(spriteSize: int):
	position.x += spriteSize / 2 * direction
