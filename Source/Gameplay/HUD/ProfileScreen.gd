extends Control

class_name ProfileScreen

onready var scroll_container: ScrollContainer = $ScrollContainer
onready var avatar_name: Label = $ScrollContainer/ScrollItems/Panel/Name
onready var avatar_icon: TextureRect = $ScrollContainer/ScrollItems/Panel/AvatarContainer/Avatar

onready var level_value: Label = $ScrollContainer/ScrollItems/Panel/Info/Level/Value
onready var total_matches_value: Label = $ScrollContainer/ScrollItems/Panel/Info/TotalMatches/Value
onready var won_matches_value: Label = $ScrollContainer/ScrollItems/Panel/Info/WonMatches/Value
onready var lost_matches_value: Label = $ScrollContainer/ScrollItems/Panel/Info/LostMatches/Value
onready var rank_value: Label = $ScrollContainer/ScrollItems/Panel/Info/Rank/Value


func _ready() -> void:
	pass


func go_back():
	yield(get_tree().create_timer(0.1), "timeout")
	get_tree().change_scene("res://Source/Main/Main.tscn")


func leaderboard():
	pass


func edit_profile() -> void:
	get_tree().change_scene("res://Source/Gameplay/HUD/Customization.tscn")


func edit_avatar() -> void:
	get_tree().change_scene("res://Source/Gameplay/HUD/Customization.tscn")



func edit_frame() -> void:
	get_tree().change_scene("res://Source/Gameplay/HUD/Customization.tscn")


func edit_color() -> void:
	get_tree().change_scene("res://Source/Gameplay/HUD/Customization.tscn")


func edit_dice() -> void:
	get_tree().change_scene("res://Source/Gameplay/HUD/Customization.tscn")


func edit_troop() -> void:
	get_tree().change_scene("res://Source/Gameplay/HUD/Customization.tscn")


func edit_badges() -> void:
	get_tree().change_scene("res://Source/Gameplay/HUD/Customization.tscn")
