"
Common webserver settings
"
Class {
	#name : #SSWWebserverSettings,
	#superclass : #Object,
	#classVars : [
		'DefaultPort',
		'DeploymentMode',
		'ResourceFolderName'
	],
	#category : #'Seaside-Website-Server-Settings'
}

{ #category : #private }
SSWWebserverSettings class >> adoptToDeploymentMode [

	self deploymentMode = 'Production' 
		ifTrue: [ self switchToProductionMode ]
		ifFalse: [ self switchToDevelopmentMode ]
]

{ #category : #accessing }
SSWWebserverSettings class >> defaultPort [

	^DefaultPort ifNil: [ DefaultPort := 8080 ]
]

{ #category : #accessing }
SSWWebserverSettings class >> defaultPort: aPort [

	DefaultPort := aPort
]

{ #category : #accessing }
SSWWebserverSettings class >> deploymentMode [

	^DeploymentMode ifNil: [ DeploymentMode := 'Development' ]
]

{ #category : #accessing }
SSWWebserverSettings class >> deploymentMode: aMode [

	DeploymentMode := aMode.
	
	self adoptToDeploymentMode
]

{ #category : #'private - accessing' }
SSWWebserverSettings class >> icebergProjectDirectory [
	"Return the Iceberg directory where the project is stored"
	
	^(IceRepository registeredRepositoryIncludingPackage: self package)
repositoryDirectory
]

{ #category : #'initialize - release' }
SSWWebserverSettings class >> reset [
	<script>
	
	DefaultPort := ResourceFolderName := nil.
]

{ #category : #accessing }
SSWWebserverSettings class >> resourceFolderName [

	^ResourceFolderName ifNil: [
		ResourceFolderName := (self icebergProjectDirectory / 'www') ensureCreateDirectory; fullName ]
 
]

{ #category : #accessing }
SSWWebserverSettings class >> resourceFolderName: aString [

	ResourceFolderName := aString
 
]

{ #category : #'private - deployment' }
SSWWebserverSettings class >> switchToDevelopmentMode [ 
	<script>
	
	"enable Seaside toolbar"
	#('home' 'notFound') do: [:each |	
			(WADispatcher default handlerAt: each) 
				configuration addParent: WADevelopmentConfiguration instance ].
		
	SSWRootComponent unregister: 'config'.
	WAConfigurationTool initialize
]

{ #category : #'private - deployment' }
SSWWebserverSettings class >> switchToProductionMode [ 
	<script>
	
	"enable Seaside toolbar"
	#('home' 'notFound') do: [:each |	
			(WADispatcher default handlerAt: each) 
				configuration removeParent: WADevelopmentConfiguration instance ].
		
	SSWRootComponent unregister: 'config'.
	 
]
