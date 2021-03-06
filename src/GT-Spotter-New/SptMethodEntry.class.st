"
I wrap a CompiledMethod, to modify its behavior if required for the class
"
Class {
	#name : #SptMethodEntry,
	#superclass : #SptEntry,
	#category : #'GT-Spotter-New-Entries'
}

{ #category : #converting }
SptMethodEntry >> asString [

	^ content selector
]

{ #category : #evaluating }
SptMethodEntry >> doEvaluate [

	^ content browse
]

{ #category : #evaluating }
SptMethodEntry >> icon [

	^ content systemIcon
]

{ #category : #showing }
SptMethodEntry >> render [ 

	^ GTSpotterItemBrick new
		icon: self icon;
		text: content printString
]
