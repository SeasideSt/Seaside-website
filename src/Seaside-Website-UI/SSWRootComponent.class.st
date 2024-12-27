"
Common superclass for root components on Seaside website
"
Class {
	#name : 'SSWRootComponent',
	#superclass : 'SSWComponent',
	#category : 'Seaside-Website-UI-Base',
	#package : 'Seaside-Website-UI',
	#tag : 'Base'
}

{ #category : 'testing' }
SSWRootComponent class >> canBeRoot [ 

	^true
]

{ #category : 'defaults' }
SSWRootComponent class >> contextRoot [
	"Return the default context root"
	
	^self subclassResponsibility 
]

{ #category : 'testing' }
SSWRootComponent class >> isAbstract [ 

	^self name = #SSWRootComponent
]

{ #category : 'registration' }
SSWRootComponent class >> register [
	"Register the component"
	
	|application|
	application := WAAdmin register: self asApplicationAt: self contextRoot.
	application 		 
"		addLibrary: JQDeploymentLibrary;
		addLibrary: SSWBootstrapLibrary;"
		addLibrary: SSWFileLibrary.
	application preferenceAt: #resourceBaseUrl put: '/'.
	^ application
	 
]

{ #category : 'registration' }
SSWRootComponent class >> unregister: ctx [
	"
	 Unregister the component. 
	
		self unregister: self contextRoot
	"
	
	|handler|
	handler := WADispatcher default handlerAt: ctx.
	WADispatcher default unregister: handler
]

{ #category : 'defaults' }
SSWRootComponent >> pageTitle [

	^ 'Seaside'
]

{ #category : 'rendering' }
SSWRootComponent >> renderGithubLinkOn: html [

	html anchor
		class: 'github-corner';
		attributeAt: 'aria-label' put: 'View source on GitHub';
		targetBlank;
		url: 'https://github.com/SeasideSt/Seaside';
		with: [ 
			html image resourceUrl: 'images/github-corner.svg' ]
]

{ #category : 'rendering' }
SSWRootComponent >> renderPageNavigationOn: html [

	html div class: 'navigation'; with: [ 
		html div class: 'sections'; with: [
			self
				renderSectionTitled: 'Getting Started'
				url:'https://github.com/SeasideSt/Seaside?tab=readme-ov-file#getting-started'
				detail: 'Download and install'
				on: html.
			html div class: 'section'; with: [
				html div class: 'section-content'; with: [
					html div class: 'section-header'; with: [
						html anchor callback: [ self call: SSWDocumentationPage new ]; with: 'Documentation' ].
					html div class: 'section-detail'; with: 'Learn to develop' ] ].
			self
				renderSectionTitled: 'Releases'
				url: 'https://github.com/SeasideSt/Seaside/releases'
				detail: 'The current release is version 3.5.9'
				on: html.
			self
				renderSectionTitled: 'Blog'
				url: 'blog.seaside.st'
				detail: ''
				on: html ] ]
]

{ #category : 'rendering' }
SSWRootComponent >> renderSectionTitled: sectionName url: urlString detail: detailString on: html [

	html div class: 'section'; with: [
		html div class: 'section-content'; with: [
			html div class: 'section-header'; with: [
				html anchor url: urlString; targetBlank; with: sectionName ].
			html div class: 'section-detail'; with: detailString ] ]
]

{ #category : 'updating' }
SSWRootComponent >> updateRoot: htmlRoot [

	htmlRoot title: self pageTitle
	
]
