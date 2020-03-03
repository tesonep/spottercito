Class {
	#name : #SptWorldMenuEntry,
	#superclass : #SptEntry,
	#category : #'GT-Spotter-New-Entries'
}

{ #category : #converting }
SptWorldMenuEntry >> asString [ 

	^ content contents
]

{ #category : #evaluating }
SptWorldMenuEntry >> doEvaluate [ 

	content spotterActDefault
]

{ #category : #showing }
SptWorldMenuEntry >> icon [

	^ content icon
]

{ #category : #'spotter-extensions' }
SptWorldMenuEntry >> spotterPreviewIn: aComposite inContext: aSpotter [

	^ GTSpotterItemBrick new
		text: content contents;
		icon: content icon;
		disable;
		yourself
]