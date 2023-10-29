extends Node2D

@onready var fill = %Fill
@onready var background = %Background

func _ready():
	pass

func set_health(current: int, max_health: int):
	var percentage = float(current) / max_health
	fill.rect_scale.x = percentage


func _on_health_component_health_changed(current_health, max_health) -> void:
	set_health(current_health, max_health)# Replace with function body.
