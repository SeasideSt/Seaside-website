"
Common superclass for root components on Seaside website
"
Class {
	#name : #SSWRootComponent,
	#superclass : #SSWComponent,
	#category : #'Seaside-Website-UI-Base'
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
		addLibrary: JQDeploymentLibrary;
		addLibrary: SSWBootstrapLibrary;
		addLibrary: SSWFileLibrary.
		
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

{ #category : #defaults }
SSWRootComponent >> pageTitle [

	^'Seaside'
]

{ #category : #updating }
SSWRootComponent >> updateRoot: htmlRoot [

	htmlRoot beHtml5.
	htmlRoot title: self pageTitle
	
]
