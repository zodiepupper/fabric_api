@tool
## this is a simple tool script to generate an api.gd file from a
## provided openapi json file
class_name ParseOpenapiToGdscript
extends EditorScript

## the template for each API endpoint we wanna generate methods for
## 
## this template requires the following:
## {operationId}		- names the method and signal
## {path_description}	- the docs summary of this specific endpoint
## {METHOD}				- which HTTP method this endpoint requires
var function_template : String = """
signal signal_{operationId}
## Matrix endpoint: {operationId}
##
## {path_description}
func request_{operationId}(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", {operationId})
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_{operationId}',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: {operationId} failed\\n\\tresult: ", result, "\\n\\tresponse_code: ", response_code)
		# clean up by freeing the request itself. we don't want requests just lingering around in the tree
		client.queue_free()
		)
	# build query params
	var qp = []
	if dir!='':
		qp.append("dir="+dir)
	if filter!='':
		qp.append("filter="+filter)
	if from!='':
		qp.append("from="+from)
	qp.append("limit="+str(limit))
	if to!='':
		qp.append("to="+to)
	# construct qp string
	var qpstring = ''
	if qp.size()>0:qpstring+='?'
	for i in qp.size():
		if i != 0:
			qpstring += '&'
		qpstring+=qp[i]
	# make request
	res = client.request(
	base_url+"_matrix/client/v3/rooms/"+roomId+"/messages"+qpstring,
	headers,
	HTTPClient.METHOD_{METHOD}
	)
"""

## as an editor tool script, we need this function so this script can
## be called in the editor, on demand
func _run() -> void:
	print_debug('start parsing api')
	var url_to_json := "res://addons/vector/matrix_spec/matrix_openapi.json"
	var output := ""
	output += "class_name " + url_to_json.get_basename() + "wfwefew\n\n"
	print_debug("we are gonna try to parse: ", url_to_json)
	# we start by reading the file to a string so...
	var json_text := FileAccess.open(url_to_json, FileAccess.READ).get_as_text()
	# if it succeeds...
	if json_text:
		# use the JSON type to parse it...
		var json := JSON.parse_string(json_text)
		# if we succeed again...
		if json:
			print_debug("JSON loaded")
			print(typeof(json))
			print("contains paths: ","paths" in json)
			# check to see if it has the fields we need from the OpenAPI spec
			# paths are the actual endpoint url, relative to the base_url (aka homeserver)
			if "paths" in json:
				# capture paths into a variable so we can ensure it is a Dictionary
				var paths : Dictionary = json.paths
				# for each path in the API...
				for path in paths.keys():
					print("path: ",path)
					# we want to process each method, these will become our functions/signals
					# in gdscript. we can use these to asynchronously send requests, as many as
					# we want, and wait for the engine to signal that each one is finished before
					# we need to process the data.
					# (you will need to look at the output to see what i mean)
					#
					# since we are iterating over these using "keys()" we will need to remember
					# that we are getting the keys, not the values of the Dictionary. so we
					# will need to index the dictionary each time to get the data we want.
					for method in paths[path].keys():
						# \t adds a tab btw
						print("\tsupports method: ",method)
						# check to see if the operation has a name, we need this for naming the
						# functions/signals in the output file. i'm not sure how consistent
						# this is with other APIs, if we need to we can make it automatically
						# use something else for the name later on.
						if "operationId" in paths[path][method]:
							# if it has all the fields we are looking for, we can use the format
							# method on the template String to generate the final api.gd 
							#
							# the way the format method is setup here is so each entry in the array
							# passed to .format(), needs to be (a touple ideally) an array with only
							# two entries. the first entry is what text inside {} we should lookup
							# to replace with the second entry of the array.
							# so: "dog says {dogsound}".format( [ ["dogsound", "woof"] ] ) would become
							# "dog says woof"
							output += function_template.format(
								[
									["operationId", paths[path][method]["operationId"]],
									["METHOD", method.to_upper()],
									["path_description", path[path][method]["description"]]
								]
							)
			var outfile := FileAccess.open(url_to_json+".gd",FileAccess.WRITE_READ)
			print(outfile.store_string(output))
			outfile.close()
			#print("output = ",output)
			print("done parsing api")
			return
	print_debug("that didn't work...")
