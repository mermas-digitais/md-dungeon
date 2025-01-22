extends Control


func _on_Jogar_pressed():
	get_tree().change_scene("res://Scenes/main.tscn")


func _on_Sair_pressed():
	get_tree().quit()
