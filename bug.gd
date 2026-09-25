extends Area2D

@export var health: int = 100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_entered(area: Area2D) -> void:
	if(area.is_in_group("bullets")):
		print("hit")
		health -= 20
	if(health == 0):
		print("died")
		queue_free()
