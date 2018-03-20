# FSFileLibrary
FSFileLibrary is file library for seaside web framework that stores (and retrieves) files into:
```
FileSystem workingDirectory / '..' / 'ressources' 
```

The main goal was to have a persistant file library (store files on the hard drive not in the image).
## installation
Add to your baseline:
```
spec
	baseline: 'FSFileLibrary'
	with: [ spec
		repository: 'github://mattonem/SeasideFileLibraries:master/src';
		loads: #default ].
```


# S3FileLibrary
To come
