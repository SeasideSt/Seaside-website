"
The webserver for quick access to start and stop the server
"
Class {
	#name : 'WASWWebserver',
	#superclass : 'Object',
	#classVars : [
		'Default'
	],
	#category : 'Seaside-Website-Server-Runtime',
	#package : 'Seaside-Website-Server',
	#tag : 'Runtime'
}

{ #category : 'utilities' }
WASWWebserver class >> browse [
	<script>
 
	|port url |
	url := 'http://localhost'.
	port := WASWWebserverSettings defaultPort.
	port = 80 ifFalse: [ url := url, ':', port asString ]. 
	WebBrowser openOn: url
]

{ #category : 'private - accessing' }
WASWWebserver class >> default [
	"Return the default instance"
	
	^Default ifNil: [ Default := self new ]
	 
]

{ #category : 'private - defaults' }
WASWWebserver class >> defaultPort [
	"Returns the receivers default port."
	
	^WASWWebserverSettings defaultPort  
]

{ #category : 'testing' }
WASWWebserver class >> ifRunning: aBlock [
	"Evaluate the given block when the server is running"
	
	self isRunning ifTrue: aBlock
]

{ #category : 'testing' }
WASWWebserver class >> isRunning [
	"Return true if the server is running"
	
	^ZnZincStaticServerAdaptor default isRunning
]

{ #category : 'running' }
WASWWebserver class >> reset [
	"Reset the default server instance"
	<script>
	
	^self stop; start
]

{ #category : 'private - defaults' }
WASWWebserver class >> resourceFolderName [
	"Return the folder name for serving static resources."

	^WASWWebserverSettings resourceFolderName 
]

{ #category : 'running' }
WASWWebserver class >> start [
	"Start the default server instance"
	<script>
	
	^self default start
]

{ #category : 'running' }
WASWWebserver class >> stop [
	"Stop the default server instance"
	<script>
	
	^self default stop
]

{ #category : 'private - defaults' }
WASWWebserver >> defaultPort [
	"Returns the receivers default port."
	
	^self class defaultPort
]

{ #category : 'private - defaults' }
WASWWebserver >> resourceFolderName [
	"Return the folder name for serving static resources."

	^self class resourceFolderName 
]

{ #category : 'private - running' }
WASWWebserver >> start [
	"Start the webserver."
	<script: 'self start'>
	
	ZnZincStaticServerAdaptor startOn: self defaultPort andServeFilesFrom: self resourceFolderName 
]

{ #category : 'private - running' }
WASWWebserver >> stop [
	"Stop the webserver."
	<script: 'self stop'>
	
	ZnZincStaticServerAdaptor stop
]
