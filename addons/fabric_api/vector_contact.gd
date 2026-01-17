## A schema for tracking known contacts/users
##
## this allows us to keep all known users organized
## and gives us a framework to link multiple user accounts
## together so our user can easily interact with their friends
## no matter what platform they're logged in with!
class_name VectorContact

## local nickname for this contact that should only appear in GUI
var nickname : String

## a lookup of each known identity of this contact
## [br]we use a Dictionary here so we can use 
var identities : Dictionary[String, VectorUser]

## a variable to define what circles this user is in
## [br]this can be used to determine what data should
## be syncable to this user
var circles : PackedStringArray
