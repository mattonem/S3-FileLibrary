actions
documentOf: aSelector
	^ (FileSystem workingDirectory / '..' / 'ressources' / aSelector)
		binaryReadStream   upToEnd