"
A custom response generator handling not found
"
Class {
	#name : 'WASWHtmlResponseGenerator',
	#superclass : 'WAHtmlResponseGenerator',
	#category : 'Seaside-Website-Server-Routing',
	#package : 'Seaside-Website-Server',
	#tag : 'Routing'
}

{ #category : 'handling' }
WASWHtmlResponseGenerator >> notFound [
 	"Return a custom response for not found"
	 
	self response
		redirectTo: '/', WASWNotFoundPage contextRoot 
]
