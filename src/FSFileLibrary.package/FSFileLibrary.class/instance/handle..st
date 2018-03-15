actions
handle: aRequestContext
	| fileName selector fileHandler |
	fileName := aRequestContext consumer next.
	(self filenames includes: fileName) 
		ifFalse: [ ^ self ].
	
	fileHandler := aRequestContext handler.
	fileHandler useXSendfile
		ifTrue: [
			aRequestContext respond: [ :response |
				response
					cacheFor: self cacheDuration;
					headerAt: 'X-Sendfile' put: (self fullPathForFileName: fileName using: fileHandler);
					contentType: (self mimetypeOf: fileName) ] ]
		ifFalse: [
			aRequestContext respond: [ :response |
				response
					cacheFor: self cacheDuration;
					document: (self documentOf: fileName)
					mimeType: (self mimetypeOf: fileName) ] ]