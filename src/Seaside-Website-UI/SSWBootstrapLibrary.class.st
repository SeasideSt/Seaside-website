"
Bootstrap 4 library
"
Class {
	#name : 'SSWBootstrapLibrary',
	#superclass : 'WAFileMetadataLibrary',
	#category : 'Seaside-Website-UI-Libraries',
	#package : 'Seaside-Website-UI',
	#tag : 'Libraries'
}

{ #category : 'updating' }
SSWBootstrapLibrary >> updateRoot: htmlRoot [

	| css |
	css := htmlRoot stylesheet url: 'https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css'.
	css attributes 
			at: 'integrity' append: 'sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC';
			at: 'crossorigin' append: 'anonymous'
]
