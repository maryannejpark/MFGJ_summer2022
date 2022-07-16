extends Node2D

onready var journalPanel = get_node("JournalPanel")
onready var animalArray = get_node("AnimalList").get_node("AnimalArray")
onready var wime1 = get_node("HUD").get_node("Week1")
onready var week2 = get_node("HUD").get_node("Week2")

# Player variables
onready var reputation := 0 # reputation ~= xp
onready var time := 1
onready var day := 1
onready var season := 0



func _ready():
	randomize()


func _on_JournalButton_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			journalPanel.move_to(2,2)
			animalArray.paused = true


func _on_ScreenTransition_animation_finished():
	$ScreenTransition.visible = false


func _on_EndButton_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			$ScreenTransition.visible = true
			$ScreenTransition.play()
