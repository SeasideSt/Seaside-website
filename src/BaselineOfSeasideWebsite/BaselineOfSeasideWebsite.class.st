"
Baseline for the Seaside website project
"
Class {
	#name : 'BaselineOfSeasideWebsite',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfSeasideWebsite',
	#package : 'BaselineOfSeasideWebsite'
}

{ #category : 'baseline' }
BaselineOfSeasideWebsite >> baseline: spec [  
	<baseline>
	
	spec for: #'common' do: [ 
		self seaside: spec.
		
		spec 
			package: 'Seaside-Website-UI' with: [ spec requires: #('Seaside3') ];
		 	package: 'Seaside-Website-Server' with: [ spec requires: #('Seaside-Website-UI') ].

		spec 
			group: 'Server' with: #('Seaside-Website-Server');
			group: 'all' with: #('Server');
			group: 'default' with: #('all').
	]
]

{ #category : 'baseline' }
BaselineOfSeasideWebsite >> seaside: spec [ 

	spec
			baseline: 'Seaside3'
        	with: [ 
				spec
					loads: #('default' 'Seaside-Microdown');
					repository: 'github://SeasideSt/Seaside:master/repository' ]
]
