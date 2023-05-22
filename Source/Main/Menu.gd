extends Control

class_name MainMenu

onready var quit_confirm_menu = $Overlay/QuitConfirm
onready var quit_confirm_vmenu = $Overlay/QuitConfirm/ColorRect/MarginContainer/VMenu
onready var start_game_overlay = $Overlay/StartGameOverlay
onready var options_overlay = $Overlay/OptionsOverlay
onready var offline_overlay = $Overlay/OfflineOverlay
onready var players_range = $Overlay/OfflineOverlay/Container/Info/PlayersRange
onready var banner_update_anim = $BannerUpdate/AnimationPlayer

signal options_saved

func _ready():
	quit_confirm_menu.hide()
	start_game_overlay.hide()
	options_overlay.hide()

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		quit()

func play():
	if not Server.connected:
		return
	start_game_overlay.show()

func options():
	options_overlay.show()

func notifications() -> void:
	pass # Replace with function body.

func connect_wallet() -> void:
	pass # Replace with function body.

func discord() -> void:
	OS.shell_open("https://discord.gg/EZnUANXP")
	pass # Replace with function body.

func twitter() -> void:
	OS.shell_open("https://twitter.com/")

func shop() -> void:
	pass # Replace with function body.

func quit():
	quit_confirm_menu.show()
	quit_confirm_vmenu.grab_focus_on_index_child()
	set_process_unhandled_input(false)

func quit_confirm():
	get_tree().quit()

func quit_cancel():
	quit_confirm_menu.hide()
	set_process_unhandled_input(true)
	#grab_focus_on_index_child()

func _on_OptionsMenu_options_saved():
	emit_signal("options_saved")

func play_offline():
	offline_overlay.show()

func create_offline_game():
	GamePlay.online = false
	GamePlay.number_of_players = players_range.value
	get_tree().change_scene("res://Source/Gameplay/Game/Game.tscn")

func cancel_offline_game():
	offline_overlay.hide()


func banner_animation_finished(anim_name: String) -> void:
	if anim_name == "move_in":
		banner_update_anim.play("scale")
