adding
addFileNamed: aFilename contents: aByteArrayOrString
	| writer |
	(FileSystem workingDirectory / 'ressources') ensureCreateDirectory.
	writer := (FileSystem workingDirectory / 'ressources' / aFilename) ensureCreateFile
		writeStream.
	writer nextPutAll: aByteArrayOrString