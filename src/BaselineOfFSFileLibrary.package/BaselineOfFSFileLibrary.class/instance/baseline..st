baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [  spec
				baseline: 'Seaside3'
				with: [ spec
						repository: 'github://SeasideSt/Seaside:master/repository';
						loads: #default ].
			spec package: 'FSFileLibrary' ]
