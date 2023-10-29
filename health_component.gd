extends Node

var max_health: int = 100
var current_health: int = max_health #setget _set_current_health
signal health_depleted
signal health_changed(current_health, max_health)

# This setter function allows us to automatically emit the signal when health changes
func _set_current_health(value):
	current_health = value
	emit_signal("health_changed", current_health, max_health)
	if current_health <= 0:
		emit_signal("health_depleted")

func take_damage(damage: int):
	self.current_health -= damage

func heal(amount: int):
	self.current_health = min(self.current_health + amount, max_health)
