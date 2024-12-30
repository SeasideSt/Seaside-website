Class {
	#name : 'WASWDocumentationPage',
	#superclass : 'WASWRootComponent',
	#category : 'Seaside-Website-UI-Pages',
	#package : 'Seaside-Website-UI',
	#tag : 'Pages'
}

{ #category : 'rendering' }
WASWDocumentationPage >> renderContentOn: html [

	html div 
		class: 'page documentation-page';
		with: [
			self renderHeadingItemsOn: html.		
			html div class: 'page-header'; with: [ html heading level: 1; with: 'Documentation'. ].			
			html div class: 'page-left-column'.		
			html div class: 'page-middle-column'; with: [ self renderPageContentOn: html ].			
			html div class: 'page-right-column'; with: [ self renderPageNavigationOn: html ].			
			html div class: 'page-footer' ]
]

{ #category : 'rendering' }
WASWDocumentationPage >> renderPageContentOn: html [

	html div class: 'page-content'; with: [ 
		html div class: 'sections'; with: [
			self
				renderSectionTitled: 'Book'
				url:'https://book.seaside.st'
				detail: 'Read it'
				on: html.
			self
				renderSectionTitled: 'Wiki'
				url: 'https://github.com/SeasideSt/Seaside/wiki'
				detail: ''
				on: html.
			self
				renderSectionTitled: 'HPi tutorial'
				url: 'http://www.hpi.uni-potsdam.de/hirschfeld/seaside/tutorial/'
				detail: ''
				on: html ] ]
]
