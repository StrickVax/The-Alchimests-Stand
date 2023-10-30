extends Node2D
class_name Health_Component

@export var health_bar : Health_Bar

@export var max_health: int = 100
var current_health: int = max_health #setget _set_current_health

func _ready():
	current_health = max_health
# This setter function allows us to automatically emit the signal when health changes

func take_damage(attack: Attack):
	self.current_health -= attack.attack_damage
	health_bar.set_health(current_health,max_health)
	
func heal(amount: int):
	self.current_health = min(self.current_health + amount, max_health)
