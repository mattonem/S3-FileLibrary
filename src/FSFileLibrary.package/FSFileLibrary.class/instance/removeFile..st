actions
removeFile: aFilename 
	^ ((FileSystem workingDirectory / 'ressources') ensureCreateDirectory / aFilename) delete