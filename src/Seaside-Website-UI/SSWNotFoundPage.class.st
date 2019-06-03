"
A component rendered when something is not found
"
Class {
	#name : #SSWNotFoundPage,
	#superclass : #SSWRootComponent,
	#category : #'Seaside-Website-UI'
}

{ #category : #defaults }
SSWNotFoundPage class >> contextRoot [

	^'notFound'
]

{ #category : #'initialize - release' }
SSWNotFoundPage class >> initialize [
	"Initializes the receiver class."
	
	self register
]

{ #category : #rendering }
SSWNotFoundPage >> renderContentOn: html [

	html heading: 'Not found'
]
