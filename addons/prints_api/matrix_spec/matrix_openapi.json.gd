class_name matrix_openapi.json


signal signal_getWellknown
## Matrix endpoint: getWellknown
##
## {path_description}
func request_getWellknown(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getWellknown)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getWellknown',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getWellknown failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getWellknownSupport
## Matrix endpoint: getWellknownSupport
##
## {path_description}
func request_getWellknownSupport(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getWellknownSupport)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getWellknownSupport',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getWellknownSupport failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_pingAppservice
## Matrix endpoint: pingAppservice
##
## {path_description}
func request_pingAppservice(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", pingAppservice)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_pingAppservice',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: pingAppservice failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getAuthMetadata
## Matrix endpoint: getAuthMetadata
##
## {path_description}
func request_getAuthMetadata(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getAuthMetadata)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getAuthMetadata',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getAuthMetadata failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_generateLoginToken
## Matrix endpoint: generateLoginToken
##
## {path_description}
func request_generateLoginToken(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", generateLoginToken)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_generateLoginToken',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: generateLoginToken failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getConfigAuthed
## Matrix endpoint: getConfigAuthed
##
## {path_description}
func request_getConfigAuthed(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getConfigAuthed)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getConfigAuthed',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getConfigAuthed failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getContentAuthed
## Matrix endpoint: getContentAuthed
##
## {path_description}
func request_getContentAuthed(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getContentAuthed)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getContentAuthed',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getContentAuthed failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getContentOverrideNameAuthed
## Matrix endpoint: getContentOverrideNameAuthed
##
## {path_description}
func request_getContentOverrideNameAuthed(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getContentOverrideNameAuthed)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getContentOverrideNameAuthed',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getContentOverrideNameAuthed failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getUrlPreviewAuthed
## Matrix endpoint: getUrlPreviewAuthed
##
## {path_description}
func request_getUrlPreviewAuthed(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getUrlPreviewAuthed)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getUrlPreviewAuthed',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getUrlPreviewAuthed failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getContentThumbnailAuthed
## Matrix endpoint: getContentThumbnailAuthed
##
## {path_description}
func request_getContentThumbnailAuthed(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getContentThumbnailAuthed)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getContentThumbnailAuthed',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getContentThumbnailAuthed failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_registrationTokenValidity
## Matrix endpoint: registrationTokenValidity
##
## {path_description}
func request_registrationTokenValidity(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", registrationTokenValidity)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_registrationTokenValidity',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: registrationTokenValidity failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getRoomSummary
## Matrix endpoint: getRoomSummary
##
## {path_description}
func request_getRoomSummary(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRoomSummary)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRoomSummary',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRoomSummary failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getSpaceHierarchy
## Matrix endpoint: getSpaceHierarchy
##
## {path_description}
func request_getSpaceHierarchy(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getSpaceHierarchy)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getSpaceHierarchy',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getSpaceHierarchy failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getRelatingEvents
## Matrix endpoint: getRelatingEvents
##
## {path_description}
func request_getRelatingEvents(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRelatingEvents)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRelatingEvents',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRelatingEvents failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getRelatingEventsWithRelType
## Matrix endpoint: getRelatingEventsWithRelType
##
## {path_description}
func request_getRelatingEventsWithRelType(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRelatingEventsWithRelType)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRelatingEventsWithRelType',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRelatingEventsWithRelType failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getRelatingEventsWithRelTypeAndEventType
## Matrix endpoint: getRelatingEventsWithRelTypeAndEventType
##
## {path_description}
func request_getRelatingEventsWithRelTypeAndEventType(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRelatingEventsWithRelTypeAndEventType)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRelatingEventsWithRelTypeAndEventType',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRelatingEventsWithRelTypeAndEventType failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getThreadRoots
## Matrix endpoint: getThreadRoots
##
## {path_description}
func request_getThreadRoots(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getThreadRoots)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getThreadRoots',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getThreadRoots failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getEventByTimestamp
## Matrix endpoint: getEventByTimestamp
##
## {path_description}
func request_getEventByTimestamp(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getEventByTimestamp)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getEventByTimestamp',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getEventByTimestamp failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getAccount3PIDs
## Matrix endpoint: getAccount3PIDs
##
## {path_description}
func request_getAccount3PIDs(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getAccount3PIDs)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getAccount3PIDs',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getAccount3PIDs failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_post3PIDs
## Matrix endpoint: post3PIDs
##
## {path_description}
func request_post3PIDs(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", post3PIDs)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_post3PIDs',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: post3PIDs failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_add3PID
## Matrix endpoint: add3PID
##
## {path_description}
func request_add3PID(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", add3PID)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_add3PID',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: add3PID failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_bind3PID
## Matrix endpoint: bind3PID
##
## {path_description}
func request_bind3PID(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", bind3PID)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_bind3PID',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: bind3PID failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_delete3pidFromAccount
## Matrix endpoint: delete3pidFromAccount
##
## {path_description}
func request_delete3pidFromAccount(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", delete3pidFromAccount)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_delete3pidFromAccount',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: delete3pidFromAccount failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_requestTokenTo3PIDEmail
## Matrix endpoint: requestTokenTo3PIDEmail
##
## {path_description}
func request_requestTokenTo3PIDEmail(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", requestTokenTo3PIDEmail)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_requestTokenTo3PIDEmail',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: requestTokenTo3PIDEmail failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_requestTokenTo3PIDMSISDN
## Matrix endpoint: requestTokenTo3PIDMSISDN
##
## {path_description}
func request_requestTokenTo3PIDMSISDN(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", requestTokenTo3PIDMSISDN)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_requestTokenTo3PIDMSISDN',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: requestTokenTo3PIDMSISDN failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_unbind3pidFromAccount
## Matrix endpoint: unbind3pidFromAccount
##
## {path_description}
func request_unbind3pidFromAccount(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", unbind3pidFromAccount)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_unbind3pidFromAccount',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: unbind3pidFromAccount failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_deactivateAccount
## Matrix endpoint: deactivateAccount
##
## {path_description}
func request_deactivateAccount(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", deactivateAccount)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_deactivateAccount',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: deactivateAccount failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_changePassword
## Matrix endpoint: changePassword
##
## {path_description}
func request_changePassword(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", changePassword)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_changePassword',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: changePassword failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_requestTokenToResetPasswordEmail
## Matrix endpoint: requestTokenToResetPasswordEmail
##
## {path_description}
func request_requestTokenToResetPasswordEmail(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", requestTokenToResetPasswordEmail)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_requestTokenToResetPasswordEmail',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: requestTokenToResetPasswordEmail failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_requestTokenToResetPasswordMSISDN
## Matrix endpoint: requestTokenToResetPasswordMSISDN
##
## {path_description}
func request_requestTokenToResetPasswordMSISDN(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", requestTokenToResetPasswordMSISDN)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_requestTokenToResetPasswordMSISDN',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: requestTokenToResetPasswordMSISDN failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getTokenOwner
## Matrix endpoint: getTokenOwner
##
## {path_description}
func request_getTokenOwner(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getTokenOwner)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getTokenOwner',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getTokenOwner failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getWhoIs
## Matrix endpoint: getWhoIs
##
## {path_description}
func request_getWhoIs(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getWhoIs)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getWhoIs',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getWhoIs failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getCapabilities
## Matrix endpoint: getCapabilities
##
## {path_description}
func request_getCapabilities(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getCapabilities)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getCapabilities',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getCapabilities failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_createRoom
## Matrix endpoint: createRoom
##
## {path_description}
func request_createRoom(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", createRoom)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_createRoom',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: createRoom failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_deleteDevices
## Matrix endpoint: deleteDevices
##
## {path_description}
func request_deleteDevices(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", deleteDevices)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_deleteDevices',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: deleteDevices failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getDevices
## Matrix endpoint: getDevices
##
## {path_description}
func request_getDevices(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getDevices)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getDevices',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getDevices failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_deleteDevice
## Matrix endpoint: deleteDevice
##
## {path_description}
func request_deleteDevice(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", deleteDevice)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_deleteDevice',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: deleteDevice failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_DELETE
	)

signal signal_getDevice
## Matrix endpoint: getDevice
##
## {path_description}
func request_getDevice(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getDevice)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getDevice',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getDevice failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_updateDevice
## Matrix endpoint: updateDevice
##
## {path_description}
func request_updateDevice(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", updateDevice)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_updateDevice',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: updateDevice failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_updateAppserviceRoomDirectoryVisibility
## Matrix endpoint: updateAppserviceRoomDirectoryVisibility
##
## {path_description}
func request_updateAppserviceRoomDirectoryVisibility(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", updateAppserviceRoomDirectoryVisibility)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_updateAppserviceRoomDirectoryVisibility',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: updateAppserviceRoomDirectoryVisibility failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_getRoomVisibilityOnDirectory
## Matrix endpoint: getRoomVisibilityOnDirectory
##
## {path_description}
func request_getRoomVisibilityOnDirectory(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRoomVisibilityOnDirectory)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRoomVisibilityOnDirectory',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRoomVisibilityOnDirectory failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_setRoomVisibilityOnDirectory
## Matrix endpoint: setRoomVisibilityOnDirectory
##
## {path_description}
func request_setRoomVisibilityOnDirectory(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setRoomVisibilityOnDirectory)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setRoomVisibilityOnDirectory',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setRoomVisibilityOnDirectory failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_deleteRoomAlias
## Matrix endpoint: deleteRoomAlias
##
## {path_description}
func request_deleteRoomAlias(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", deleteRoomAlias)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_deleteRoomAlias',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: deleteRoomAlias failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_DELETE
	)

signal signal_getRoomIdByAlias
## Matrix endpoint: getRoomIdByAlias
##
## {path_description}
func request_getRoomIdByAlias(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRoomIdByAlias)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRoomIdByAlias',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRoomIdByAlias failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_setRoomAlias
## Matrix endpoint: setRoomAlias
##
## {path_description}
func request_setRoomAlias(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setRoomAlias)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setRoomAlias',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setRoomAlias failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_getEvents
## Matrix endpoint: getEvents
##
## {path_description}
func request_getEvents(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getEvents)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getEvents',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getEvents failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_peekEvents
## Matrix endpoint: peekEvents
##
## {path_description}
func request_peekEvents(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", peekEvents)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_peekEvents',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: peekEvents failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getOneEvent
## Matrix endpoint: getOneEvent
##
## {path_description}
func request_getOneEvent(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getOneEvent)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getOneEvent',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getOneEvent failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_initialSync
## Matrix endpoint: initialSync
##
## {path_description}
func request_initialSync(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", initialSync)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_initialSync',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: initialSync failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_joinRoom
## Matrix endpoint: joinRoom
##
## {path_description}
func request_joinRoom(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", joinRoom)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_joinRoom',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: joinRoom failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getJoinedRooms
## Matrix endpoint: getJoinedRooms
##
## {path_description}
func request_getJoinedRooms(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getJoinedRooms)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getJoinedRooms',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getJoinedRooms failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getKeysChanges
## Matrix endpoint: getKeysChanges
##
## {path_description}
func request_getKeysChanges(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getKeysChanges)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getKeysChanges',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getKeysChanges failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_claimKeys
## Matrix endpoint: claimKeys
##
## {path_description}
func request_claimKeys(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", claimKeys)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_claimKeys',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: claimKeys failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_uploadCrossSigningKeys
## Matrix endpoint: uploadCrossSigningKeys
##
## {path_description}
func request_uploadCrossSigningKeys(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", uploadCrossSigningKeys)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_uploadCrossSigningKeys',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: uploadCrossSigningKeys failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_queryKeys
## Matrix endpoint: queryKeys
##
## {path_description}
func request_queryKeys(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", queryKeys)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_queryKeys',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: queryKeys failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_uploadCrossSigningSignatures
## Matrix endpoint: uploadCrossSigningSignatures
##
## {path_description}
func request_uploadCrossSigningSignatures(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", uploadCrossSigningSignatures)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_uploadCrossSigningSignatures',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: uploadCrossSigningSignatures failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_uploadKeys
## Matrix endpoint: uploadKeys
##
## {path_description}
func request_uploadKeys(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", uploadKeys)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_uploadKeys',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: uploadKeys failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_knockRoom
## Matrix endpoint: knockRoom
##
## {path_description}
func request_knockRoom(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", knockRoom)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_knockRoom',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: knockRoom failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getLoginFlows
## Matrix endpoint: getLoginFlows
##
## {path_description}
func request_getLoginFlows(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getLoginFlows)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getLoginFlows',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getLoginFlows failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_login
## Matrix endpoint: login
##
## {path_description}
func request_login(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", login)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_login',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: login failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_redirectToSSO
## Matrix endpoint: redirectToSSO
##
## {path_description}
func request_redirectToSSO(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", redirectToSSO)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_redirectToSSO',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: redirectToSSO failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_redirectToIdP
## Matrix endpoint: redirectToIdP
##
## {path_description}
func request_redirectToIdP(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", redirectToIdP)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_redirectToIdP',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: redirectToIdP failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_logout
## Matrix endpoint: logout
##
## {path_description}
func request_logout(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", logout)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_logout',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: logout failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_logout_all
## Matrix endpoint: logout_all
##
## {path_description}
func request_logout_all(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", logout_all)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_logout_all',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: logout_all failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getNotifications
## Matrix endpoint: getNotifications
##
## {path_description}
func request_getNotifications(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getNotifications)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getNotifications',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getNotifications failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getPresence
## Matrix endpoint: getPresence
##
## {path_description}
func request_getPresence(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getPresence)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getPresence',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getPresence failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_setPresence
## Matrix endpoint: setPresence
##
## {path_description}
func request_setPresence(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setPresence)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setPresence',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setPresence failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_getUserProfile
## Matrix endpoint: getUserProfile
##
## {path_description}
func request_getUserProfile(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getUserProfile)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getUserProfile',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getUserProfile failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_deleteProfileField
## Matrix endpoint: deleteProfileField
##
## {path_description}
func request_deleteProfileField(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", deleteProfileField)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_deleteProfileField',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: deleteProfileField failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_DELETE
	)

signal signal_getProfileField
## Matrix endpoint: getProfileField
##
## {path_description}
func request_getProfileField(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getProfileField)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getProfileField',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getProfileField failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_setProfileField
## Matrix endpoint: setProfileField
##
## {path_description}
func request_setProfileField(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setProfileField)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setProfileField',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setProfileField failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_getPublicRooms
## Matrix endpoint: getPublicRooms
##
## {path_description}
func request_getPublicRooms(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getPublicRooms)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getPublicRooms',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getPublicRooms failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_queryPublicRooms
## Matrix endpoint: queryPublicRooms
##
## {path_description}
func request_queryPublicRooms(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", queryPublicRooms)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_queryPublicRooms',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: queryPublicRooms failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getPushers
## Matrix endpoint: getPushers
##
## {path_description}
func request_getPushers(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getPushers)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getPushers',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getPushers failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_postPusher
## Matrix endpoint: postPusher
##
## {path_description}
func request_postPusher(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", postPusher)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_postPusher',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: postPusher failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getPushRules
## Matrix endpoint: getPushRules
##
## {path_description}
func request_getPushRules(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getPushRules)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getPushRules',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getPushRules failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getPushRulesGlobal
## Matrix endpoint: getPushRulesGlobal
##
## {path_description}
func request_getPushRulesGlobal(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getPushRulesGlobal)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getPushRulesGlobal',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getPushRulesGlobal failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_deletePushRule
## Matrix endpoint: deletePushRule
##
## {path_description}
func request_deletePushRule(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", deletePushRule)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_deletePushRule',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: deletePushRule failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_DELETE
	)

signal signal_getPushRule
## Matrix endpoint: getPushRule
##
## {path_description}
func request_getPushRule(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getPushRule)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getPushRule',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getPushRule failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_setPushRule
## Matrix endpoint: setPushRule
##
## {path_description}
func request_setPushRule(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setPushRule)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setPushRule',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setPushRule failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_getPushRuleActions
## Matrix endpoint: getPushRuleActions
##
## {path_description}
func request_getPushRuleActions(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getPushRuleActions)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getPushRuleActions',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getPushRuleActions failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_setPushRuleActions
## Matrix endpoint: setPushRuleActions
##
## {path_description}
func request_setPushRuleActions(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setPushRuleActions)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setPushRuleActions',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setPushRuleActions failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_isPushRuleEnabled
## Matrix endpoint: isPushRuleEnabled
##
## {path_description}
func request_isPushRuleEnabled(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", isPushRuleEnabled)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_isPushRuleEnabled',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: isPushRuleEnabled failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_setPushRuleEnabled
## Matrix endpoint: setPushRuleEnabled
##
## {path_description}
func request_setPushRuleEnabled(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setPushRuleEnabled)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setPushRuleEnabled',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setPushRuleEnabled failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_refresh
## Matrix endpoint: refresh
##
## {path_description}
func request_refresh(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", refresh)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_refresh',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: refresh failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_register
## Matrix endpoint: register
##
## {path_description}
func request_register(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", register)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_register',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: register failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_checkUsernameAvailability
## Matrix endpoint: checkUsernameAvailability
##
## {path_description}
func request_checkUsernameAvailability(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", checkUsernameAvailability)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_checkUsernameAvailability',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: checkUsernameAvailability failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_requestTokenToRegisterEmail
## Matrix endpoint: requestTokenToRegisterEmail
##
## {path_description}
func request_requestTokenToRegisterEmail(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", requestTokenToRegisterEmail)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_requestTokenToRegisterEmail',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: requestTokenToRegisterEmail failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_requestTokenToRegisterMSISDN
## Matrix endpoint: requestTokenToRegisterMSISDN
##
## {path_description}
func request_requestTokenToRegisterMSISDN(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", requestTokenToRegisterMSISDN)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_requestTokenToRegisterMSISDN',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: requestTokenToRegisterMSISDN failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_deleteRoomKeys
## Matrix endpoint: deleteRoomKeys
##
## {path_description}
func request_deleteRoomKeys(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", deleteRoomKeys)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_deleteRoomKeys',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: deleteRoomKeys failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_DELETE
	)

signal signal_getRoomKeys
## Matrix endpoint: getRoomKeys
##
## {path_description}
func request_getRoomKeys(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRoomKeys)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRoomKeys',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRoomKeys failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_putRoomKeys
## Matrix endpoint: putRoomKeys
##
## {path_description}
func request_putRoomKeys(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", putRoomKeys)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_putRoomKeys',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: putRoomKeys failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_deleteRoomKeysByRoomId
## Matrix endpoint: deleteRoomKeysByRoomId
##
## {path_description}
func request_deleteRoomKeysByRoomId(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", deleteRoomKeysByRoomId)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_deleteRoomKeysByRoomId',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: deleteRoomKeysByRoomId failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_DELETE
	)

signal signal_getRoomKeysByRoomId
## Matrix endpoint: getRoomKeysByRoomId
##
## {path_description}
func request_getRoomKeysByRoomId(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRoomKeysByRoomId)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRoomKeysByRoomId',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRoomKeysByRoomId failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_putRoomKeysByRoomId
## Matrix endpoint: putRoomKeysByRoomId
##
## {path_description}
func request_putRoomKeysByRoomId(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", putRoomKeysByRoomId)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_putRoomKeysByRoomId',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: putRoomKeysByRoomId failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_deleteRoomKeyBySessionId
## Matrix endpoint: deleteRoomKeyBySessionId
##
## {path_description}
func request_deleteRoomKeyBySessionId(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", deleteRoomKeyBySessionId)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_deleteRoomKeyBySessionId',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: deleteRoomKeyBySessionId failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_DELETE
	)

signal signal_getRoomKeyBySessionId
## Matrix endpoint: getRoomKeyBySessionId
##
## {path_description}
func request_getRoomKeyBySessionId(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRoomKeyBySessionId)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRoomKeyBySessionId',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRoomKeyBySessionId failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_putRoomKeyBySessionId
## Matrix endpoint: putRoomKeyBySessionId
##
## {path_description}
func request_putRoomKeyBySessionId(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", putRoomKeyBySessionId)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_putRoomKeyBySessionId',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: putRoomKeyBySessionId failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_getRoomKeysVersionCurrent
## Matrix endpoint: getRoomKeysVersionCurrent
##
## {path_description}
func request_getRoomKeysVersionCurrent(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRoomKeysVersionCurrent)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRoomKeysVersionCurrent',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRoomKeysVersionCurrent failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_postRoomKeysVersion
## Matrix endpoint: postRoomKeysVersion
##
## {path_description}
func request_postRoomKeysVersion(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", postRoomKeysVersion)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_postRoomKeysVersion',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: postRoomKeysVersion failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_deleteRoomKeysVersion
## Matrix endpoint: deleteRoomKeysVersion
##
## {path_description}
func request_deleteRoomKeysVersion(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", deleteRoomKeysVersion)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_deleteRoomKeysVersion',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: deleteRoomKeysVersion failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_DELETE
	)

signal signal_getRoomKeysVersion
## Matrix endpoint: getRoomKeysVersion
##
## {path_description}
func request_getRoomKeysVersion(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRoomKeysVersion)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRoomKeysVersion',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRoomKeysVersion failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_putRoomKeysVersion
## Matrix endpoint: putRoomKeysVersion
##
## {path_description}
func request_putRoomKeysVersion(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", putRoomKeysVersion)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_putRoomKeysVersion',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: putRoomKeysVersion failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_getLocalAliases
## Matrix endpoint: getLocalAliases
##
## {path_description}
func request_getLocalAliases(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getLocalAliases)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getLocalAliases',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getLocalAliases failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_ban
## Matrix endpoint: ban
##
## {path_description}
func request_ban(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", ban)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_ban',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: ban failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getEventContext
## Matrix endpoint: getEventContext
##
## {path_description}
func request_getEventContext(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getEventContext)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getEventContext',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getEventContext failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getOneRoomEvent
## Matrix endpoint: getOneRoomEvent
##
## {path_description}
func request_getOneRoomEvent(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getOneRoomEvent)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getOneRoomEvent',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getOneRoomEvent failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_forgetRoom
## Matrix endpoint: forgetRoom
##
## {path_description}
func request_forgetRoom(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", forgetRoom)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_forgetRoom',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: forgetRoom failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_roomInitialSync
## Matrix endpoint: roomInitialSync
##
## {path_description}
func request_roomInitialSync(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", roomInitialSync)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_roomInitialSync',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: roomInitialSync failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_inviteBy3PID
## Matrix endpoint: inviteBy3PID
##
## {path_description}
func request_inviteBy3PID(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", inviteBy3PID)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_inviteBy3PID',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: inviteBy3PID failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_inviteUser
## Matrix endpoint: inviteUser
##
## {path_description}
func request_inviteUser(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", inviteUser)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_inviteUser',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: inviteUser failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_joinRoomById
## Matrix endpoint: joinRoomById
##
## {path_description}
func request_joinRoomById(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", joinRoomById)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_joinRoomById',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: joinRoomById failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getJoinedMembersByRoom
## Matrix endpoint: getJoinedMembersByRoom
##
## {path_description}
func request_getJoinedMembersByRoom(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getJoinedMembersByRoom)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getJoinedMembersByRoom',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getJoinedMembersByRoom failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_kick
## Matrix endpoint: kick
##
## {path_description}
func request_kick(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", kick)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_kick',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: kick failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_leaveRoom
## Matrix endpoint: leaveRoom
##
## {path_description}
func request_leaveRoom(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", leaveRoom)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_leaveRoom',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: leaveRoom failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getMembersByRoom
## Matrix endpoint: getMembersByRoom
##
## {path_description}
func request_getMembersByRoom(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getMembersByRoom)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getMembersByRoom',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getMembersByRoom failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getRoomEvents
## Matrix endpoint: getRoomEvents
##
## {path_description}
func request_getRoomEvents(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRoomEvents)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRoomEvents',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRoomEvents failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_setReadMarker
## Matrix endpoint: setReadMarker
##
## {path_description}
func request_setReadMarker(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setReadMarker)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setReadMarker',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setReadMarker failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_postReceipt
## Matrix endpoint: postReceipt
##
## {path_description}
func request_postReceipt(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", postReceipt)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_postReceipt',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: postReceipt failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_redactEvent
## Matrix endpoint: redactEvent
##
## {path_description}
func request_redactEvent(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", redactEvent)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_redactEvent',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: redactEvent failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_reportRoom
## Matrix endpoint: reportRoom
##
## {path_description}
func request_reportRoom(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", reportRoom)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_reportRoom',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: reportRoom failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_reportEvent
## Matrix endpoint: reportEvent
##
## {path_description}
func request_reportEvent(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", reportEvent)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_reportEvent',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: reportEvent failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_sendMessage
## Matrix endpoint: sendMessage
##
## {path_description}
func request_sendMessage(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", sendMessage)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_sendMessage',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: sendMessage failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_getRoomState
## Matrix endpoint: getRoomState
##
## {path_description}
func request_getRoomState(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRoomState)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRoomState',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRoomState failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getRoomStateWithKey
## Matrix endpoint: getRoomStateWithKey
##
## {path_description}
func request_getRoomStateWithKey(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRoomStateWithKey)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRoomStateWithKey',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRoomStateWithKey failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_setRoomStateWithKey
## Matrix endpoint: setRoomStateWithKey
##
## {path_description}
func request_setRoomStateWithKey(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setRoomStateWithKey)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setRoomStateWithKey',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setRoomStateWithKey failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_setTyping
## Matrix endpoint: setTyping
##
## {path_description}
func request_setTyping(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setTyping)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setTyping',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setTyping failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_unban
## Matrix endpoint: unban
##
## {path_description}
func request_unban(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", unban)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_unban',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: unban failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_upgradeRoom
## Matrix endpoint: upgradeRoom
##
## {path_description}
func request_upgradeRoom(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", upgradeRoom)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_upgradeRoom',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: upgradeRoom failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_search
## Matrix endpoint: search
##
## {path_description}
func request_search(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", search)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_search',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: search failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_sendToDevice
## Matrix endpoint: sendToDevice
##
## {path_description}
func request_sendToDevice(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", sendToDevice)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_sendToDevice',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: sendToDevice failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_sync
## Matrix endpoint: sync
##
## {path_description}
func request_sync(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", sync)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_sync',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: sync failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_queryLocationByAlias
## Matrix endpoint: queryLocationByAlias
##
## {path_description}
func request_queryLocationByAlias(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", queryLocationByAlias)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_queryLocationByAlias',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: queryLocationByAlias failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_queryLocationByProtocol
## Matrix endpoint: queryLocationByProtocol
##
## {path_description}
func request_queryLocationByProtocol(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", queryLocationByProtocol)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_queryLocationByProtocol',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: queryLocationByProtocol failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getProtocolMetadata
## Matrix endpoint: getProtocolMetadata
##
## {path_description}
func request_getProtocolMetadata(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getProtocolMetadata)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getProtocolMetadata',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getProtocolMetadata failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getProtocols
## Matrix endpoint: getProtocols
##
## {path_description}
func request_getProtocols(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getProtocols)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getProtocols',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getProtocols failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_queryUserByID
## Matrix endpoint: queryUserByID
##
## {path_description}
func request_queryUserByID(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", queryUserByID)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_queryUserByID',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: queryUserByID failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_queryUserByProtocol
## Matrix endpoint: queryUserByProtocol
##
## {path_description}
func request_queryUserByProtocol(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", queryUserByProtocol)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_queryUserByProtocol',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: queryUserByProtocol failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getAccountData
## Matrix endpoint: getAccountData
##
## {path_description}
func request_getAccountData(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getAccountData)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getAccountData',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getAccountData failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_setAccountData
## Matrix endpoint: setAccountData
##
## {path_description}
func request_setAccountData(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setAccountData)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setAccountData',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setAccountData failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_defineFilter
## Matrix endpoint: defineFilter
##
## {path_description}
func request_defineFilter(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", defineFilter)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_defineFilter',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: defineFilter failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getFilter
## Matrix endpoint: getFilter
##
## {path_description}
func request_getFilter(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getFilter)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getFilter',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getFilter failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_requestOpenIdToken
## Matrix endpoint: requestOpenIdToken
##
## {path_description}
func request_requestOpenIdToken(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", requestOpenIdToken)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_requestOpenIdToken',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: requestOpenIdToken failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getAccountDataPerRoom
## Matrix endpoint: getAccountDataPerRoom
##
## {path_description}
func request_getAccountDataPerRoom(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getAccountDataPerRoom)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getAccountDataPerRoom',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getAccountDataPerRoom failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_setAccountDataPerRoom
## Matrix endpoint: setAccountDataPerRoom
##
## {path_description}
func request_setAccountDataPerRoom(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setAccountDataPerRoom)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setAccountDataPerRoom',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setAccountDataPerRoom failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_getRoomTags
## Matrix endpoint: getRoomTags
##
## {path_description}
func request_getRoomTags(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getRoomTags)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getRoomTags',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getRoomTags failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_deleteRoomTag
## Matrix endpoint: deleteRoomTag
##
## {path_description}
func request_deleteRoomTag(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", deleteRoomTag)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_deleteRoomTag',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: deleteRoomTag failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_DELETE
	)

signal signal_setRoomTag
## Matrix endpoint: setRoomTag
##
## {path_description}
func request_setRoomTag(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", setRoomTag)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_setRoomTag',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: setRoomTag failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)

signal signal_searchUserDirectory
## Matrix endpoint: searchUserDirectory
##
## {path_description}
func request_searchUserDirectory(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", searchUserDirectory)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_searchUserDirectory',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: searchUserDirectory failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_reportUser
## Matrix endpoint: reportUser
##
## {path_description}
func request_reportUser(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", reportUser)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_reportUser',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: reportUser failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getTurnServer
## Matrix endpoint: getTurnServer
##
## {path_description}
func request_getTurnServer(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getTurnServer)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getTurnServer',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getTurnServer failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getVersions
## Matrix endpoint: getVersions
##
## {path_description}
func request_getVersions(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getVersions)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getVersions',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getVersions failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_createContent
## Matrix endpoint: createContent
##
## {path_description}
func request_createContent(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", createContent)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_createContent',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: createContent failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_getConfig
## Matrix endpoint: getConfig
##
## {path_description}
func request_getConfig(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getConfig)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getConfig',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getConfig failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getContent
## Matrix endpoint: getContent
##
## {path_description}
func request_getContent(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getContent)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getContent',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getContent failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getContentOverrideName
## Matrix endpoint: getContentOverrideName
##
## {path_description}
func request_getContentOverrideName(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getContentOverrideName)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getContentOverrideName',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getContentOverrideName failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getUrlPreview
## Matrix endpoint: getUrlPreview
##
## {path_description}
func request_getUrlPreview(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getUrlPreview)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getUrlPreview',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getUrlPreview failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_getContentThumbnail
## Matrix endpoint: getContentThumbnail
##
## {path_description}
func request_getContentThumbnail(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", getContentThumbnail)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_getContentThumbnail',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: getContentThumbnail failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_GET
	)

signal signal_uploadContent
## Matrix endpoint: uploadContent
##
## {path_description}
func request_uploadContent(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", uploadContent)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_uploadContent',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: uploadContent failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_POST
	)

signal signal_uploadContentToMXC
## Matrix endpoint: uploadContentToMXC
##
## {path_description}
func request_uploadContentToMXC(base_url:String='', headers:Array=[], {function_parameters}):
	print_debug("initializing request: ", uploadContentToMXC)
	var res
	var client = HTTPRequest.new()
	add_child(client)
	client.request_completed.connect(func(result:int,response_code:int,headers:PackedStringArray,body:PackedByteArray):
		# if the request was successful:
		if result == HTTPRequest.RESULT_SUCCESS:
			emit_signal('signal_uploadContentToMXC',result,response_code,headers,body)
		# if the result wasn't successful, tell the logs!
		else:
			print_debug("requst: uploadContentToMXC failed\n\tresult: ", result, "\n\tresponse_code: ", response_code)
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
	HTTPClient.METHOD_PUT
	)
