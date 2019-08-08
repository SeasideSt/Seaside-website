"
A custom response generator handling not found
"
Class {
	#name : #SSWHtmlResponseGenerator,
	#superclass : #WAHtmlResponseGenerator,
	#category : #'Seaside-Website-Server-Routing'
}

{ #category : #'class initialization' }
SSWHtmlResponseGenerator class >> initialize [

	WAAdmin defaultDispatcher configuration at: #responseGenerator put: self  
]

{ #category : #handling }
SSWHtmlResponseGenerator >> notFound [
 	"Return a custom response for not found"
	 
	self response
		redirectTo: '/', SSWNotFoundPage contextRoot 
]
