extends Control

@onready var homeserver: LineEdit = %homeserver
var req : HTTPRequest

func _ready() -> void:
	homeserver.text_changed.connect(homeserver_updated)

func homeserver_updated(new_text:String) -> void:
	req = HTTPRequest.new()
	add_child(req)
	
