"
Common superclass for root components on Seaside website
"
Class {
	#name : #SSWRootComponent,
	#superclass : #SSWComponent,
	#category : #'Seaside-Website-UI'
}

{ #category : #testing }
SSWRootComponent class >> canBeRoot [ 

	^true
]

{ #category : #defaults }
SSWRootComponent class >> contextRoot [
	"Return the default context root"
	
	^self subclassResponsibility 
]

{ #category : #testing }
SSWRootComponent class >> isAbstract [ 

	^self name = #SSWRootComponent
]

{ #category : #registration }
SSWRootComponent class >> register [
	"Register the component"
	
	|application|
	application := WAAdmin register: self asApplicationAt: self contextRoot.
	application 		 
		addLibrary: JQDeploymentLibrary.
		
	^application
	 
]

{ #category : #registration }
SSWRootComponent class >> unregister: ctx [
	"
	 Unregister the component. 
	
		self unregister: self contextRoot
	"
	
	|handler|
	handler := WADispatcher default handlerAt: ctx.
	WADispatcher default unregister: handler
]
