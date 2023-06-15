extends Control

onready var host_button = $Host2
onready var cancel_button = $Background/HMenu/Cancel

onready var lobby_name = $LobbyName
onready var lobby_players = $PlayersRange
onready var lobby_pass = $LobbyPassword

var player_value = 2


func _ready():
	Server.connect("lobby_created_signal", self, "lobby_created")

func lobby_created(lobby_data):
	get_tree().change_scene("res://Source/Gameplay/HUD/Lobby.tscn")

func _on_Cancel_pressed():
	get_tree().change_scene("res://Source/Main/Main.tscn")

func _on_Host_pressed():
	host_button.disabled = true
	cancel_button.disabled = true
	
	var players_list = {}
	
	var player_dictionary = {
		"id": null,
		"name": null,
		"color": null,
		"host": true
	}
	
	for i in range(player_value):
		players_list[Server.player_id] = player_dictionary
	
	var lobby_data = {
		"code": null,
		"name": lobby_name.text,
		"pass": lobby_pass.text,
		"max_players": player_value,
		"current_players": 0,
		"players": players_list
	}
	
	Server.create_lobby(lobby_data)


func _on_Button_pressed():
	if player_value > 2 :
		player_value -=1
	$Label.set_text(str(player_value))


func _on_Button2_pressed():
	if player_value < 6:
		player_value += 1
	$Label.set_text(str(player_value))
