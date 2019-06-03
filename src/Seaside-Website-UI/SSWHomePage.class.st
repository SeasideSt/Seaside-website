"
General homepage of Seaside website
"
Class {
	#name : #SSWHomePage,
	#superclass : #SSWRootComponent,
	#category : #'Seaside-Website-UI'
}

{ #category : #defaults }
SSWHomePage class >> contextRoot [
	"Return the context root"
	
	^'home'
]

{ #category : #initialization }
SSWHomePage class >> initialize [
	"Initializes the receiver class."
	
	self register
]

{ #category : #registration }
SSWHomePage class >> register [
	<script>
	
	super register.	
	WADispatcher default defaultName: self contextRoot	 
]

{ #category : #rendering }
SSWHomePage >> renderContentOn: html [

	html text: 'Seaside homepage'
]
