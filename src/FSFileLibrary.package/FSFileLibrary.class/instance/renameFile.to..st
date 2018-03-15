actions
renameFile: oldName to: newName
	^ (FileSystem workingDirectory / 'ressources' / oldName ) renameTo: newName