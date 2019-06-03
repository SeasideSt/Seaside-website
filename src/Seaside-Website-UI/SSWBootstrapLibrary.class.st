"
Bootstrap 4 library
"
Class {
	#name : #SSWBootstrapLibrary,
	#superclass : #WAFileMetadataLibrary,
	#category : #'Seaside-Website-UI-Libraries'
}

{ #category : #updating }
SSWBootstrapLibrary >> updateRoot: htmlRoot [

	| css |
	css := htmlRoot stylesheet url: 'https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'.
	css attributes 
			at: 'integrity' append: 'sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm';
			at: 'crossorigin' append: 'anonymous'
]
