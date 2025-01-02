"
General homepage of Seaside website
"
Class {
	#name : 'WASWHomePage',
	#superclass : 'WASWPage',
	#category : 'Seaside-Website-UI-Pages',
	#package : 'Seaside-Website-UI',
	#tag : 'Pages'
}

{ #category : 'rendering' }
WASWHomePage class >> pageTitle [

	^ ''
]

{ #category : 'testing' }
WASWHomePage >> needsLogo [

	^ false
]

{ #category : 'rendering' }
WASWHomePage >> pageCssClass [

	^ 'home-page'
]

{ #category : 'rendering' }
WASWHomePage >> renderPageHeaderOn: html [

	html div class: 'home-page-logo'; with: [ html image resourceUrl: 'images/seaside-m.png'  ].
	html div class: 'home-page-slogan'; with: 'The framework for developing sophisticated web applications in Smalltalk'.
]
