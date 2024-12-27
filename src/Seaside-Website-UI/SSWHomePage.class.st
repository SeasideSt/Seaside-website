"
General homepage of Seaside website
"
Class {
	#name : 'SSWHomePage',
	#superclass : 'SSWRootComponent',
	#category : 'Seaside-Website-UI-Pages',
	#package : 'Seaside-Website-UI',
	#tag : 'Pages'
}

{ #category : 'defaults' }
SSWHomePage class >> contextRoot [
	"Return the context root"
	
	^'home'
]

{ #category : 'initialization' }
SSWHomePage class >> initialize [
	"Initializes the receiver class."
	
	self register
]

{ #category : 'registration' }
SSWHomePage class >> register [
	<script>
	
	super register.	
	WADispatcher default defaultName: self contextRoot	 
]

{ #category : 'rendering' }
SSWHomePage >> renderContentOn: html [

	html div 
		class: 'page home-page';
		with: [
			self renderGithubLinkOn: html.
			html heading level:1; with: 'Welcome to Seaside'.
			html div class: 'slogan'; with: 'The framework for developing sophisticated web applications in Smalltalk'.
			self renderPageNavigationOn: html ]
]
