"
A custom response generator handling not found
"
Class {
	#name : 'SSWHtmlResponseGenerator',
	#superclass : 'WAHtmlResponseGenerator',
	#category : 'Seaside-Website-Server-Routing',
	#package : 'Seaside-Website-Server',
	#tag : 'Routing'
}

{ #category : 'handling' }
SSWHtmlResponseGenerator >> notFound [
 	"Return a custom response for not found"
	 
	self response
		redirectTo: '/', SSWNotFoundPage contextRoot 
]
