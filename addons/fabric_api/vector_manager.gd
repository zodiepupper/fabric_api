## this is the object that manages all things related to the Vector addon
## 
## This extends node so we can place it in the scene tree. If this is in the 
## scene tree, it means we can append the API calls underneath this Node
## to ensrue they are processed by the tree. (this is required because
## to async http requests, we use HttpRequest which the engine will poll
## for us in the background, and we only need to listen for the signals
## to respond to it. it makes things more sane to work with and similar
## to how it would work on the web)
##
## you should instantiate one of these and use it to add, remove, update, etc. 
## any logins or protocols you'd like to use. [br][br]
## when designing new Vector types it is very important not to use opaque fields
## [br]this means that when a new field needs to be added to your Feed, it needs
## to be implemented as vars or as functions or both to ensure that someone
## can understand what is going on instantly at a glance. the names for these
## should also be obvious such as `var users: Array[MatrixContact]` where MatrixContact 
## extends VectorContact. what we don't want is a field that just accepts a JSON/Dictionary
## since those both would not have an enforced schema, thus making documentation the only 
## way to know what they do.
## [br][br]because of how the Vector addon is designed, it ensures that all pieces are predictable
## and *moderately* self-contained. this makes it super easy to hold and manage multiple logins
## even across multiple different protocols. it even allows users to have a contacts list that
## shows all their friends as entries that contain all their *known* contact information, making
## it super easy for users to never miss out, even if they, for example, prefer bluesky, but have
## friends on mastodon
class_name VectorManager
extends Node
