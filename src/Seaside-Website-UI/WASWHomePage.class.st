"
General homepage of Seaside website
"
Class {
	#name : 'WASWHomePage',
	#superclass : 'WASWPage',
	#category : 'Seaside-Website-UI-Pages',
	#package : 'Seaside-Website-UI',
	#tag : 'Pages'
}

{ #category : 'rendering' }
WASWHomePage class >> pageTitle [

	^ ''
]

{ #category : 'testing' }
WASWHomePage >> needsLogo [

	^ false
]

{ #category : 'rendering' }
WASWHomePage >> pageCssClass [

	^ 'home-page'
]

{ #category : 'rendering' }
WASWHomePage >> renderContentOn: html [	
	
	html div class: 'page-content'; with: [ 
		html microDown:

'Seaside provides a layered set of abstractions over HTTP and HTML that let you build highly interactive web applications quickly, reusably and maintainably. It is based in Smalltalk, a proven and robust language that is implemented by different vendors. Seaside includes:

- [Programmatic HTML generation](https://github.com/SeasideSt/Seaside/wiki/Generating-HTML).  A lot of markup is boilerplate: the same patterns of lists, links, forms and tables show up on page after page. Seaside has a rich API for generating HTML that lets you abstract these patterns into convenient methods rather than pasting the same sequence of tags into templates every time.

- [Callback-based request handling](https://github.com/SeasideSt/Seaside/wiki/Links%2C-Forms-and-Callbacks).  Why should you have to come up with a unique name for every link and form input on your page, only to extract them from the URL and request fields later?  Seaside automates this process by letting you associate Smalltalk block closures, not names, with inputs and links, so you can think about objects and methods instead of ids and strings.

- [Embedded components](https://github.com/SeasideSt/Seaside/wiki/Embedding-Subcomponents).  Stop thinking a whole page at a time; Seaside lets you build your UI as a tree of individual, stateful component objects, each encapsulating a small part of a page.  Often, these can be used over and over again, within and between applications - nearly every application, for example, needs a way to present a batched list of search results, or a table with sortable columns, and Seaside includes components for these out the box.

- [Modal session management](https://github.com/SeasideSt/Seaside/wiki/Call-and-Answer).  What if you could express a complex, multi-page workflow in a single method?  Unlike servlet models which require a separate handler for each page or request, Seaside models an entire user session as a continuous piece of code, with natural, linear control flow.  In Seaside, components can call and return to each other like subroutines; string a few of those calls together in a method, just as if you were using console I/O or opening modal dialog boxes, and you have a workflow. And yes, the back button will still work.

Seaside also has good support for [CSS and Javascript](https://github.com/SeasideSt/Seaside/wiki/CSS-and-Javascript), excellent [web-based development tools](https://github.com/SeasideSt/Seaside/wiki/Development-Tools) and [debugging support](https://github.com/SeasideSt/Seaside/wiki/Debugging-Seaside-Applications), a rich [configuration and preferences](https://github.com/SeasideSt/Seaside/wiki/Configuration-and-Preferences) framework, and more.' ]
]

{ #category : 'rendering' }
WASWHomePage >> renderPageHeaderOn: html [

	html div class: 'home-page-logo'; with: [ html image resourceUrl: 'images/seaside-m.png'  ].
	html div class: 'home-page-slogan'; with: 'The framework for developing sophisticated web applications in Smalltalk'.
]
