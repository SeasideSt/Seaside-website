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
			html div class: 'page-header'; with: [
				html div class: 'home-page-logo'; with: [ html image resourceUrl: 'images/seaside-m.png'  ].
				html div class: 'home-page-slogan'; with: 'The framework for developing sophisticated web applications in Smalltalk'. ].			
			html div class: 'page-left-column'.		
			html div class: 'page-middle-column'.			
			html div class: 'page-right-column'; with: [ self renderPageNavigationOn: html ].			
			html div class: 'page-footer' ]
]
