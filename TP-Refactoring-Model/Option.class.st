Class {
	#name : #Option,
	#superclass : #Object,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Option class >> newWith: aCollection [
 self new withCollection: aCollection
]

{ #category : #abstract }
Option >> myQuestions: aUser [
 ^ self subclassResponsibility 
]

{ #category : #sorting }
Option >> returnFiltered: aCollection of: aUser [
	^ (aCollection temp last: (100 min: aCollection  size)) reject:[:q | q isUser: aUser].
]

{ #category : #sorting }
Option >> sortQuestions: questions [ 

 ^ questions asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size]
]
