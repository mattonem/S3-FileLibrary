actions
documentOf: aSelector
	^ (FileSystem workingDirectory / 'ressources' / aSelector ) readStream binary upToEnd