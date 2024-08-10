extends Node

var score = 0

@onready var score_label = $ScoreLabel
@onready var start_label = $StartLabel
@onready var win_label = $WinLabel

func addPoint():
	score += 1
	score_label.text = "You collected " + str(score) + " coins!"
	if score == 14:
		win_label.text = "You Win!"
	else:
		win_label.text = "You are missing " + str(14 - score) + " coins...."
