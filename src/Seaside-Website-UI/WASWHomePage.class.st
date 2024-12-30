"
General homepage of Seaside website
"
Class {
	#name : 'WASWHomePage',
	#superclass : 'WASWRootComponent',
	#category : 'Seaside-Website-UI-Pages',
	#package : 'Seaside-Website-UI',
	#tag : 'Pages'
}

{ #category : 'defaults' }
WASWHomePage class >> contextRoot [
	"Return the context root"
	
	^'home'
]

{ #category : 'initialization' }
WASWHomePage class >> initialize [
	"Initializes the receiver class."
	
	self register
]

{ #category : 'registration' }
WASWHomePage class >> register [
	<script>
	
	super register.	
	WADispatcher default defaultName: self contextRoot	 
]

{ #category : 'rendering' }
WASWHomePage >> renderContentOn: html [

	html div 
		class: 'page home-page';
		with: [
			self renderGithubLinkOn: html.
			html heading level:1; with: 'Welcome to Seaside'.
			html div class: 'slogan'; with: 'The framework for developing sophisticated web applications in Smalltalk'.
			self renderPageNavigationOn: html ]
]
