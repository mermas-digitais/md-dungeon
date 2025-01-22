extends ColorRect

func _ready():
	rect_size.x = 63 * Global.health / Global.max_health
