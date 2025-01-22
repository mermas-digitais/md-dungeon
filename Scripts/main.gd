extends Node

var silver_key_obtained = false  # Chave prateada obtida
var golden_key_obtained = false  # Chave dourada obtida

export (NodePath) var enemy_1_path
export (NodePath) var enemy_2_path
export (NodePath) var enemy_3_path


var defeated_special_enemies = 0

export var enemies_needed_for_silver_key = 3  # Defina o valor no Inspector

var special_enemies = []

func _ready():
    special_enemies.append(get_node(enemy_1_path))
    special_enemies.append(get_node(enemy_2_path))
    special_enemies.append(get_node(enemy_3_path))
    

func enemy_defeated(enemy):
    if special_enemies.has(enemy):
        defeated_special_enemies += 1
        print("Inimigos especiais derrotados:", defeated_special_enemies)

