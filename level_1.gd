extends Node2D

# Declaring the transition animation node.
@onready var transition = $Transition

# Called when the node enters the scene tree for the first time.
func _ready():
	transition.play("fade_in")
	# Play the transition animation when the node enters the scene

func _on_manual_pressed():
	$PlayerAnimation.play("walking_forward") # Replace with function body.

func _on_auto_pressed():
	$PlayerAnimation.play("walking_right") # Replace with function body.

func _on_skip_pressed():
		transition.stop() # Stops the transition and goes to second scene
		get_tree().change_scene_to_file("res://levels/level_1.tscn")
			
func _on_fast_foward_pressed():
	transition.set_speed_scale(5.0) # Once it clicked the scene will Fast Forward
		
func _on_pause_cinematic_pressed():
	transition.pause() # Will pause the cinematic once clicked
									
func _process(_delta):
	set_process_input(true)
		
func _input(event):
# Skips the frame once it clicked
	if event is InputEventScreenTouch and event.pressed:
		print("Frame Skipped!")
