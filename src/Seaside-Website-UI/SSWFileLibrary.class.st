"
A custom file library
"
Class {
	#name : #SSWFileLibrary,
	#superclass : #WAFileMetadataLibrary,
	#category : #'Seaside-Website-UI-Libraries'
}

{ #category : #updating }
SSWFileLibrary >> updateRoot: htmlRoot [

	super updateRoot: htmlRoot.
	htmlRoot stylesheet url: 'http://fonts.googleapis.com/css?family=Raleway'
]
