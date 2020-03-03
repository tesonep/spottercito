Class {
	#name : #SptHelpProcessor,
	#superclass : #SptCollectionBasedProcessor,
	#category : #'GT-Spotter-New-Processors'
}

{ #category : #'default-settings' }
SptHelpProcessor class >> defaultEnabled [

	^ true
]

{ #category : #accessing }
SptHelpProcessor class >> order [
	
	^ 200
]

{ #category : #accessing }
SptHelpProcessor class >> title [

	^ 'Help topics'
]

{ #category : #filtering }
SptHelpProcessor >> collection [

	^ SystemHelp asHelpTopic gtAllSubtopics
]

{ #category : #'key-bindings' }
SptHelpProcessor >> installKeymappingsOn: aGTSpotterMorph [

	aGTSpotterMorph
		bindKeyCombination: $h meta
		ofProcessor: self
		toAction: [ aGTSpotterMorph onKeyProcessor: self ]
]

{ #category : #filtering }
SptHelpProcessor >> newEntryOn: anElement [

	^ SptHelpEntry on: anElement
]

{ #category : #accessing }
SptHelpProcessor >> showForEmptyQuery [ 

	^ true
]