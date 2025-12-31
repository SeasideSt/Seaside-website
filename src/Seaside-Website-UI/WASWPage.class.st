"
Abstract superclass for components on Seaside website
"
Class {
	#name : 'WASWPage',
	#superclass : 'WAComponent',
	#category : 'Seaside-Website-UI-Base',
	#package : 'Seaside-Website-UI',
	#tag : 'Base'
}

{ #category : 'rendering' }
WASWPage class >> pageDetail [

	^ ''
]

{ #category : 'rendering' }
WASWPage class >> pageTitle [

	self subclassResponsibility 
]

{ #category : 'testing' }
WASWPage >> needsLogo [

	^ true
]

{ #category : 'rendering' }
WASWPage >> pageCssClass [

	^ ''
]

{ #category : 'rendering' }
WASWPage >> pageTitle [

	^ self class pageTitle
]

{ #category : 'rendering' }
WASWPage >> renderPageHeaderOn: html [
	
	html heading level: 1; with: self pageTitle.
]

{ #category : 'rendering' }
WASWPage >> renderSectionTitled: sectionName url: urlString detail: detailString on: html [

	html div class: 'section'; with: [
		html div class: 'section-content'; with: [
			html div class: 'section-header'; with: [
				html anchor url: urlString; targetBlank; with: sectionName ].
			html div class: 'section-detail'; with: detailString ] ]
]
