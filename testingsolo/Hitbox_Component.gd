extends Area2D
class_name Hitbox_Component

@export var health_component : Health_Component

func damage(attack: Attack):
	if health_component:
		health_component.take_damage(attack.attack_damage)
