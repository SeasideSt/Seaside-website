"
Common superclass for root components on Seaside website
"
Class {
	#name : 'WASeasideWebsiteRoot',
	#superclass : 'WAComponent',
	#instVars : [
		'currentPage'
	],
	#category : 'Seaside-Website-UI-Base',
	#package : 'Seaside-Website-UI',
	#tag : 'Base'
}

{ #category : 'testing' }
WASeasideWebsiteRoot class >> canBeRoot [ 

	^true
]

{ #category : 'testing' }
WASeasideWebsiteRoot class >> initialize [

	self register
]

{ #category : 'registration' }
WASeasideWebsiteRoot class >> register [
	<script>

	|application|
	application := WAAdmin register: self asApplicationAt: 'home'.
	application
		addLibrary: WASWFileLibrary.
	application preferenceAt: #resourceBaseUrl put: '/'.
	WADispatcher default defaultName: 'home'
]

{ #category : 'registration' }
WASeasideWebsiteRoot class >> unregister [

	WADispatcher default unregister: 'home'
]

{ #category : 'initialization' }
WASeasideWebsiteRoot >> initialize [

	super initialize.
	currentPage := WASWHomePage new
]

{ #category : 'private' }
WASeasideWebsiteRoot >> pageComponents [

	^ { WASWNewsPage . WASWGettingStartedPage . WASWDocumentationPage . WASWCommunityPage }
]

{ #category : 'rendering' }
WASeasideWebsiteRoot >> renderContentOn: html [

	html div 
		class: 'page';
		class: currentPage pageCssClass;
		with: [
			currentPage needsLogo ifTrue:[ self renderLogoOn: html ].
			self renderGithubLinkOn: html.
			html div class: 'page-header'; with: [ currentPage renderPageHeaderOn: html ].			
			html div class: 'page-left-column'.		
			html div class: 'page-middle-column'; with: currentPage.			
			html div class: 'page-right-column'; with: [ self renderPageNavigationOn: html ].			
			html div class: 'page-footer' ]
]

{ #category : 'rendering' }
WASeasideWebsiteRoot >> renderGithubLinkOn: html [

	html anchor
		class: 'github-corner';
		attributeAt: 'aria-label' put: 'View source on GitHub';
		targetBlank;
		url: 'https://github.com/SeasideSt/Seaside';
		with: [ 
			html image resourceUrl: 'images/github-corner.svg' ]
]

{ #category : 'rendering' }
WASeasideWebsiteRoot >> renderLogoOn: html [

	html anchor
		class: 'logo';
		url: '/';
		with: [ 
			html image resourceUrl: 'images/seaside-s.png' ]
]

{ #category : 'rendering' }
WASeasideWebsiteRoot >> renderPageNavigationOn: html [

	html div class: 'navigation'; with: [ 
		html div class: 'sections'; with: [
			self pageComponents do:[ :componentClass |
				html div class: 'section'; with: [
					html div class: 'section-content'; with: [
						html div class: 'section-header'; with: [
							html anchor callback: [ currentPage := componentClass new ]; with: componentClass pageTitle ].
						html div class: 'section-detail'; with: componentClass pageDetail ] ] ] ] ]
]

{ #category : 'updating' }
WASeasideWebsiteRoot >> updateRoot: htmlRoot [

	htmlRoot title: 'Seaside -', currentPage pageTitle
	
]
