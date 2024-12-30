"
Common superclass for root components on Seaside website
"
Class {
	#name : 'WASWRootComponent',
	#superclass : 'WASWComponent',
	#category : 'Seaside-Website-UI-Base',
	#package : 'Seaside-Website-UI',
	#tag : 'Base'
}

{ #category : 'testing' }
WASWRootComponent class >> canBeRoot [ 

	^true
]

{ #category : 'defaults' }
WASWRootComponent class >> contextRoot [
	"Return the default context root"
	
	^self subclassResponsibility 
]

{ #category : 'testing' }
WASWRootComponent class >> isAbstract [ 

	^self name = #WASWRootComponent
]

{ #category : 'registration' }
WASWRootComponent class >> register [
	"Register the component"
	
	|application|
	application := WAAdmin register: self asApplicationAt: self contextRoot.
	application 		 
"		addLibrary: JQDeploymentLibrary;
		addLibrary: SSWBootstrapLibrary;"
		addLibrary: WASWFileLibrary.
	application preferenceAt: #resourceBaseUrl put: '/'.
	^ application
	 
]

{ #category : 'registration' }
WASWRootComponent class >> unregister: ctx [
	"
	 Unregister the component. 
	
		self unregister: self contextRoot
	"
	
	|handler|
	handler := WADispatcher default handlerAt: ctx.
	WADispatcher default unregister: handler
]

{ #category : 'defaults' }
WASWRootComponent >> pageTitle [

	^ 'Seaside'
]

{ #category : 'rendering' }
WASWRootComponent >> renderGithubLinkOn: html [

	html anchor
		class: 'github-corner';
		attributeAt: 'aria-label' put: 'View source on GitHub';
		targetBlank;
		url: 'https://github.com/SeasideSt/Seaside';
		with: [ 
			html image resourceUrl: 'images/github-corner.svg' ]
]

{ #category : 'rendering' }
WASWRootComponent >> renderHeadingItemsOn: html [

	self renderLogoOn: html.
	self renderGithubLinkOn: html
]

{ #category : 'rendering' }
WASWRootComponent >> renderLogoOn: html [

	html anchor
		class: 'logo';
		url: '/';
		with: [ 
			html image resourceUrl: 'images/seaside-s.png' ]
]

{ #category : 'rendering' }
WASWRootComponent >> renderPageNavigationOn: html [

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
						html anchor callback: [ self show: WASWDocumentationPage new ]; with: 'Documentation' ].
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
WASWRootComponent >> renderSectionTitled: sectionName url: urlString detail: detailString on: html [

	html div class: 'section'; with: [
		html div class: 'section-content'; with: [
			html div class: 'section-header'; with: [
				html anchor url: urlString; targetBlank; with: sectionName ].
			html div class: 'section-detail'; with: detailString ] ]
]

{ #category : 'updating' }
WASWRootComponent >> updateRoot: htmlRoot [

	htmlRoot title: self pageTitle
	
]
