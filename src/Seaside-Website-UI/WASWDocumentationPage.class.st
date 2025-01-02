Class {
	#name : 'WASWDocumentationPage',
	#superclass : 'WASWPage',
	#category : 'Seaside-Website-UI-Pages',
	#package : 'Seaside-Website-UI',
	#tag : 'Pages'
}

{ #category : 'rendering' }
WASWDocumentationPage class >> pageDetail [

	^ 'Tutorials and References'
]

{ #category : 'rendering' }
WASWDocumentationPage class >> pageTitle [

	^ 'Documentation'
]

{ #category : 'rendering' }
WASWDocumentationPage >> pageCssClass [

	^ 'documentation-page'
]

{ #category : 'rendering' }
WASWDocumentationPage >> renderContentOn: html [

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
