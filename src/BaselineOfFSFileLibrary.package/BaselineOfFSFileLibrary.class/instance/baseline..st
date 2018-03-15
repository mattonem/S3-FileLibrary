baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'Seaside3'
				with: [ spec
						className: 'ConfigurationOfSeaside3';
						repository: 'github://SeasideSt/Seaside:master/repository';
						versionString: #stable ].
			spec package: 'FSFileLibrary' ]