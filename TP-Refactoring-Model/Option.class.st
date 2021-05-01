Class {
	#name : #Option,
	#superclass : #Object,
	#instVars : [
		'collection'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Option class >> newWith: aCollection [
 self new withCollection: aCollection
]

{ #category : #abstract }
Option >> myQuestions [
 self subclassResponsibility 
]

{ #category : #sorting }
Option >> sortQuestions: questions [ 

 ^ questions asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size]
]

{ #category : #initialization }
Option >> withCollection: aCollection [

	collection:= aCollection 
]
