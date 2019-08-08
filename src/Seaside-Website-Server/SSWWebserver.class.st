"
The webserver for quick access to start and stop the server
"
Class {
	#name : #SSWWebserver,
	#superclass : #Object,
	#classVars : [
		'Default'
	],
	#category : #'Seaside-Website-Server-Runtime'
}

{ #category : #utilities }
SSWWebserver class >> browse [
	<script>
 
	|port url |
	url := 'http://localhost'.
	port := SSWWebserverSettings defaultPort.
	port = 80 ifFalse: [ url := url, ':', port asString ]. 
	WebBrowser openOn: url
]

{ #category : #'private - accessing' }
SSWWebserver class >> default [
	"Return the default instance"
	
	^Default ifNil: [ Default := self new ]
	 
]

{ #category : #'private - defaults' }
SSWWebserver class >> defaultPort [
	"Returns the receivers default port."
	
	^SSWWebserverSettings defaultPort  
]

{ #category : #testing }
SSWWebserver class >> ifRunning: aBlock [
	"Evaluate the given block when the server is running"
	
	self isRunning ifTrue: aBlock
]

{ #category : #testing }
SSWWebserver class >> isRunning [
	"Return true if the server is running"
	
	^ZnZincStaticServerAdaptor default isRunning
]

{ #category : #running }
SSWWebserver class >> reset [
	"Reset the default server instance"
	<script>
	
	^self stop; start
]

{ #category : #'private - defaults' }
SSWWebserver class >> resourceFolderName [
	"Return the folder name for serving static resources."

	^SSWWebserverSettings resourceFolderName 
]

{ #category : #running }
SSWWebserver class >> start [
	"Start the default server instance"
	<script>
	
	^self default start
]

{ #category : #running }
SSWWebserver class >> stop [
	"Stop the default server instance"
	<script>
	
	^self default stop
]

{ #category : #'private - defaults' }
SSWWebserver >> defaultPort [
	"Returns the receivers default port."
	
	^self class defaultPort
]

{ #category : #'private - defaults' }
SSWWebserver >> resourceFolderName [
	"Return the folder name for serving static resources."

	^self class resourceFolderName 
]

{ #category : #'private - running' }
SSWWebserver >> start [
	"Start the webserver."
	<script: 'self start'>
	
	ZnZincStaticServerAdaptor startOn: self defaultPort andServeFilesFrom: self resourceFolderName 
]

{ #category : #'private - running' }
SSWWebserver >> stop [
	"Stop the webserver."
	<script: 'self stop'>
	
	ZnZincStaticServerAdaptor stop
]
