"
A component rendered when something is not found
"
Class {
	#name : 'WASWNotFoundPage',
	#superclass : 'WASWRootComponent',
	#category : 'Seaside-Website-UI-Pages',
	#package : 'Seaside-Website-UI',
	#tag : 'Pages'
}

{ #category : 'defaults' }
WASWNotFoundPage class >> contextRoot [

	^'notFound'
]

{ #category : 'initialize - release' }
WASWNotFoundPage class >> initialize [
	"Initializes the receiver class."
	
	self register
]

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
