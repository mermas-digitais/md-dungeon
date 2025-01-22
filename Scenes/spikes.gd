extends Area2D

export var damage = 1  # Dano causado ao jogador
var is_active = false  # Controla se o espinho está ativo ou não

func _ready():
	# Conecta o sinal de entrada na área do espinho
	connect("body_entered", self, "_on_body_entered")
	
	# Inicia um ciclo para abaixar e subir os espinhos
	toggle_spike()

func _on_body_entered(body):
	if body.name == "Player" and is_active:
		body.take_damage(damage)
		print("Espinho causou dano!")

# Alterna entre estado ativo e inativo
func toggle_spike():
	while true:
		is_active = true  # Espinho sobe (ativa)
		print("Espinho ativo!")
		$AnimationPlayer.play("spike_up")
		yield(get_tree().create_timer(2.0), "timeout")

		is_active = false  # Espinho abaixa (desativa)
		print("Espinho inativo!")
		$AnimationPlayer.play("spike_down")
		yield(get_tree().create_timer(2.0), "timeout")
