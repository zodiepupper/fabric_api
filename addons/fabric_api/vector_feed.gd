## Schema class for interacting with known feeds from a [code]VectorProtocol[/code]
##
class_name VectorFeed

## tracks all posts in this feed, the last entry in the list is the newest post
var posts

## writes a post to the feed. this will emit the 
func post_to_feed():
	pass

func edit_post_in_feed():
	pass

func redact_post_in_feed():
	pass
