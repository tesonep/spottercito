"
I wrap a Class or Trait entry, to modify its behavior if required for the class
"
Class {
	#name : #SptClassEntry,
	#superclass : #SptEntry,
	#category : #'GT-Spotter-New-Entries'
}

{ #category : #converting }
SptClassEntry >> asString [

	^ content name
]

{ #category : #evaluating }
SptClassEntry >> doEvaluate [
	content browse
]

{ #category : #evaluating }
SptClassEntry >> icon [

	^ content systemIcon
]
