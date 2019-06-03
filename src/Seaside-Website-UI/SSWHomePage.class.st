"
General homepage of Seaside website
"
Class {
	#name : #SSWHomePage,
	#superclass : #SSWRootComponent,
	#category : #'Seaside-Website-UI-Pages'
}

{ #category : #defaults }
SSWHomePage class >> contextRoot [
	"Return the context root"
	
	^'home'
]

{ #category : #initialization }
SSWHomePage class >> initialize [
	"Initializes the receiver class."
	
	self register
]

{ #category : #registration }
SSWHomePage class >> register [
	<script>
	
	super register.	
	WADispatcher default defaultName: self contextRoot	 
]

{ #category : #rendering }
SSWHomePage >> renderCardsOn: html [

	html html: '<div class="row"><div class="col-lg-4 col-md-6 col-sm-12 mb-4"><div class="card"><img class="card-img-top" src="https://designrevision.com/demo/shards/images/stock-photos/3.jpg" alt="Card image cap"><div class="card-body"><h4 class="card-title">Sample Card Title</h4><p class="card-text">He seems sinking under the evidence could not only grieve and a visit. The father is to bless and placed in his length hid...</p><a href="#" class="btn btn-primary">Read More</a></div></div></div><div class="col-lg-4 col-md-6 col-sm-12 mb-4 sm-hidden"><div class="card"><img class="card-img-top" src="https://designrevision.com/demo/shards/images/stock-photos/1.jpg" alt="Card image cap"><div class="card-body"><h4 class="card-title">Sample Card Title</h4><p class="card-text">He seems sinking under the evidence could not only grieve and a visit. The father is to bless and placed in his length hid...</p><a href="#" class="btn btn-primary">Read More</a></div></div></div><div class="col-lg-4 col-md-6 col-sm-12 mb-4 sm-hidden"><div class="card"><img class="card-img-top" src="https://designrevision.com/demo/shards/images/stock-photos/2.jpg" alt="Card image cap"><div class="card-body"><h4 class="card-title">Sample Card Title</h4><p class="card-text">He seems sinking under the evidence could not only grieve and a visit. The father is to bless and placed in his length hid...</p><a href="#" class="btn btn-primary">Read More</a></div></div></div><div class="col-lg-4 col-md-6 col-sm-12 d-none sm-hidden last"><div class="card"><img class="card-img-top" src="images/stock-photos/2.jpg" alt="Card image cap"><div class="card-body"><h4 class="card-title">Sample Card Title</h4><p class="card-text">He seems sinking under the evidence could not only grieve and a visit. The father is to bless and placed in his length hid...</p><a href="#" class="btn btn-primary">Read More</a></div></div></div></div>'
]

{ #category : #rendering }
SSWHomePage >> renderContentOn: html [
	html div 
		class: 'container';
		with: [ 	
	html break.					
	html heading: 'Seaside homepage'.
	html paragraph: 'Hello and welcome to Seaside'.
	self renderCardsOn: html ]
]
