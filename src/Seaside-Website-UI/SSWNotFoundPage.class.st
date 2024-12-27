"
A component rendered when something is not found
"
Class {
	#name : 'SSWNotFoundPage',
	#superclass : 'SSWRootComponent',
	#category : 'Seaside-Website-UI-Pages',
	#package : 'Seaside-Website-UI',
	#tag : 'Pages'
}

{ #category : 'defaults' }
SSWNotFoundPage class >> contextRoot [

	^'notFound'
]

{ #category : 'initialize - release' }
SSWNotFoundPage class >> initialize [
	"Initializes the receiver class."
	
	self register
]

{ #category : 'defaults' }
SSWNotFoundPage >> pageTitle [

	^'Seaside - Not Found'
]

{ #category : 'rendering' }
SSWNotFoundPage >> renderContentOn: html [

	html 
		heading: 'Oops!';
		paragraph: 'The resource you are trying to access was not found'
]
