## Base class for messaging protocols
##
## this class defines a generic interface which the frontend will expect from any given 
## messaging protocol such as:
## [br]
## [br]- [code]log-in[/code]
## [br]- [code]log-out[/code]
## [br]- [code]create/read/join/leave feeds (like a matrix room)[/code]
## [br]- [code]create/read/join/leave feed containers (like rooms in matrix)[/code]
## [br]- [code]send (and optionally delete/edit) messages[/code]
##
## [br][br]more features might be handled later
class_name VectorProtocol

var login_summons_browser := false

func login():
	pass

func logout():
	pass

func switch_user():
	pass

func create_feed():
	pass

func read_feed():
	pass

func join_feed():
	pass

func leave_feed():
	pass
