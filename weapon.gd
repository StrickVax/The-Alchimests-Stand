extends Node2D

var attack_damage := 10

func _on_hitbox_body_entered(body):
	if body.has_method("damage"):
		var attack = Attack.new()
		attack.attack_damage = attack_damage
