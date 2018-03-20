actions
mimetypeOf: aFilename
	^ (FileSystem workingDirectory / '..' / 'ressources' / aFilename ) mimeTypes first asString
