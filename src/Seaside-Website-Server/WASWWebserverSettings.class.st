"
Common webserver settings
"
Class {
	#name : 'WASWWebserverSettings',
	#superclass : 'Object',
	#classVars : [
		'DefaultPort',
		'DeploymentMode',
		'ResourceFolderName'
	],
	#category : 'Seaside-Website-Server-Settings',
	#package : 'Seaside-Website-Server',
	#tag : 'Settings'
}

{ #category : 'private' }
WASWWebserverSettings class >> adoptToDeploymentMode [

	self deploymentMode = 'Production' 
		ifTrue: [ self switchToProductionMode ]
		ifFalse: [ self switchToDevelopmentMode ]
]

{ #category : 'accessing' }
WASWWebserverSettings class >> defaultPort [

	^DefaultPort ifNil: [ DefaultPort := 8080 ]
]

{ #category : 'accessing' }
WASWWebserverSettings class >> defaultPort: aPort [

	DefaultPort := aPort
]

{ #category : 'accessing' }
WASWWebserverSettings class >> deploymentMode [

	^DeploymentMode ifNil: [ DeploymentMode := 'Development' ]
]

{ #category : 'accessing' }
WASWWebserverSettings class >> deploymentMode: aMode [

	DeploymentMode := aMode.
	
	self adoptToDeploymentMode
]

{ #category : 'private - accessing' }
WASWWebserverSettings class >> icebergProjectDirectory [
	"Return the Iceberg directory where the project is stored"
	
	^(IceRepository registeredRepositoryIncludingPackage: self package)
repositoryDirectory
]

{ #category : 'initialize - release' }
WASWWebserverSettings class >> reset [
	<script>
	
	DefaultPort := ResourceFolderName := nil.
]

{ #category : 'accessing' }
WASWWebserverSettings class >> resourceFolderName [

	^ResourceFolderName ifNil: [
		ResourceFolderName := (self icebergProjectDirectory / 'resources') fullName ]
 
]

{ #category : 'accessing' }
WASWWebserverSettings class >> resourceFolderName: aString [

	ResourceFolderName := aString
 
]

{ #category : 'private - deployment' }
WASWWebserverSettings class >> switchToDevelopmentMode [ 
	<script>
	
	"enable Seaside toolbar"
	#('home' 'notFound') do: [:each |	
			(WADispatcher default handlerAt: each) 
				configuration addParent: WADevelopmentConfiguration instance ].
	
	"Reenable /config and /browse tools"	
	WAConfigurationTool initialize.
	WADispatcherBrowser initialize.
	
	"Nonetheless reregister homepage to be available on /"
	WASWHomePage initialize.
]

{ #category : 'private - deployment' }
WASWWebserverSettings class >> switchToProductionMode [ 
	<script>
	
	"Disable Seaside toolbar"
	#('home' 'notFound') do: [:each |	
			(WADispatcher default handlerAt: each) 
				configuration removeParent: WADevelopmentConfiguration instance ].
	
	"unregister the config tool and browser"	
	WASWRootComponent 
		 unregister: 'config';
		 unregister: 'browse' 
]
