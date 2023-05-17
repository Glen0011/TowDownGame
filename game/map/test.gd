extends NavigationRegion2D

const pre = preload("res://game/monster/Monster 2/Monster2.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func getPoint():
	var rect = Rect2(navigation_polygon.get_vertices()[3],navigation_polygon.get_vertices()[1])
	var random_point = Vector2(randi_range(rect.position.x, rect.position.x + rect.size.x), randi_range(rect.position.y, rect.position.y + rect.size.y))
	return random_point

func _on_timer_timeout() -> void:
	pass
