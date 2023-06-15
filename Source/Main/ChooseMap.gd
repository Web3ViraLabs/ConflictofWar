extends Control

var lobby_search_scene = preload("res://Source/Gameplay/HUD/LobbySearchInstance.tscn")
var lobby_search_scene_w_name = preload("res://Source/Gameplay/HUD/LobbySearchInstanceWname.tscn")


onready var quit_confirm_menu = $Overlay/QuitConfirm
onready var quit_confirm_vmenu = $Overlay/QuitConfirm/ColorRect/MarginContainer/VMenu
onready var start_game_overlay = $Overlay/StartGameOverlay
onready var options_overlay = $Overlay/OptionsOverlay
onready var offline_overlay = $Overlay/OfflineOverlay

onready var up_button = $UpButton
onready var down_button = $DownButton
onready var next_button = $NextButton
onready var current_map_label = $MapCount/Container/Current
onready var maps = $Maps
onready var map_cards = $MapCards

var code = ""
var passw = "" 
var current_map = 1

signal joining

func _ready() -> void:
	Server.connect("got_active_lobbies_signal", self, "got_active_lobbies")
	Server.connect("failed_to_join_lobby_signal", self, "failed_to_join_lobby")
	Server.connect("lobby_updated_signal", self, "joined_lobby")
	_on_Refresh_pressed()

func go_back() -> void:
	yield(get_tree().create_timer(0.1), "timeout")
	get_tree().change_scene("res://Source/Main/Main.tscn")


func next() -> void:
	Server.join_lobby(int(code), passw)
	emit_signal("joining")
	


func disable_buttons():
	up_button.disabled = true
	down_button.disabled = true
	up_button.modulate.a8 = 150
	down_button.modulate.a8 = 150
	next_button.disabled = true
	next_button.modulate.a8 = 150

func enable_buttons():
	up_button.disabled = false
	down_button.disabled = false
	up_button.modulate.a8 = 255
	down_button.modulate.a8 = 255
	if current_map == 1:
		next_button.disabled = false
		next_button.modulate.a8 = 255

func update_map_selection():
	current_map_label.text = str(current_map)
	
	disable_buttons()
	
	var my_maps = maps.get_children()
	var my_map_cards = map_cards.get_children()
	var c_map = current_map - 1
	
	var tween = create_tween()
	tween.tween_property(maps, "rect_position:y", 340 - (408 * (current_map-1)), 0.2).set_trans(Tween.TRANS_SINE)
	tween.parallel().tween_property(map_cards, "rect_position:y", 320 - (139 * (current_map-1)), 0.2)
	
	for i in range(0, my_maps.size()):
		if i == c_map:
			tween.parallel().tween_property(my_maps[i], "modulate:a8", 255, 0.2)
			tween.parallel().tween_property(my_map_cards[i], "modulate:a8", 255, 0.2)
		else:
			tween.parallel().tween_property(my_maps[i], "modulate:a8", 0, 0.2)
			tween.parallel().tween_property(my_map_cards[i], "modulate:a8", 120, 0.2)
	
	tween.tween_callback(self, "enable_buttons")
	
func _on_Refresh_pressed():
	Server.ask_for_active_lobbies()

func got_active_lobbies(lobbies):
	instance_lobby_search_scenes(lobbies)

func instance_lobby_search_scenes(lobbies: Dictionary):
	print(lobbies.keys())
	for child in $search_spawner.get_children():
		if child is LobbySearchInstance:
			child.queue_free()
	for lobby_code in lobbies.keys():
		print(lobbies.keys())
		var lobby_instance = lobby_search_scene.instance()
		lobby_instance.set_name(str(lobbies[lobby_code]))
		$search_spawner.add_child(lobby_instance)
		lobby_instance.connect("joining", self, "joining_lobby")
		lobby_instance.code_label.text = str(lobbies[lobby_code].code)
		code = str(lobbies[lobby_code].code)
		lobby_instance.name_label.text = " " + str(lobbies[lobby_code].name)
		lobby_instance.players_label.text = str(lobbies[lobby_code].current_players) + "/" + str(lobbies[lobby_code].max_players)
		var lobby_instance_w_name = lobby_search_scene_w_name.instance()
		lobby_instance_w_name.set_name(str(lobbies[lobby_code]))
		$search_spawner2.add_child(lobby_instance_w_name)
		lobby_instance_w_name.connect("joining", self, "joining_lobby")
		lobby_instance_w_name.code_label.text = str(lobbies[lobby_code].code)
		lobby_instance_w_name.name_label.text = " " + str(lobbies[lobby_code].name)
		lobby_instance_w_name.players_label.text = str(lobbies[lobby_code].current_players) + "/" + str(lobbies[lobby_code].max_players)
		if not lobbies[lobby_code].pass:
			lobby_instance_w_name.pass_edit.placeholder_text = "none"
			passw = str(lobbies[lobby_code].pass)
			lobby_instance_w_name.pass_edit.editable = false


func pressed_up() -> void:
	current_map -= 1
	if current_map < 1:
		current_map = 4
	
	update_map_selection()

func pressed_down() -> void:
	current_map += 1
	if current_map > 4:
		current_map = 1

	update_map_selection()


func _on_Create_pressed():
	get_tree().change_scene("res://Source/Gameplay/HUD/HostGameMenu.tscn")


func _on_Button_pressed():
	$"Switch-plug2".show()
	$"Switch-plug".hide()


func _on_Button2_pressed():
	$"Switch-plug".show()
	$"Switch-plug2".hide()



func joined_lobby(lobby_data, reason):
	get_tree().change_scene("res://Source/Gameplay/HUD/Lobby.tscn")
