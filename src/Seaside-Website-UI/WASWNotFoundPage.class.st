"
A component rendered when something is not found
"
Class {
	#name : 'WASWNotFoundPage',
	#superclass : 'WASWPage',
	#category : 'Seaside-Website-UI-Pages',
	#package : 'Seaside-Website-UI',
	#tag : 'Pages'
}

{ #category : 'defaults' }
WASWNotFoundPage >> pageTitle [

	^'Seaside - Not Found'
]

{ #category : 'rendering' }
WASWNotFoundPage >> renderContentOn: html [

	html 
		heading: 'Oops!';
		paragraph: 'The resource you are trying to access was not found'
]
