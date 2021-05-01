Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: anOption [
	^ self new option: anOption
]

{ #category : #'old - deprecated' }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #'as yet unclassified' }
QuestionRetriever >> getQuestions: aUser [
	self subclassResponsibility 
]

{ #category : #'old - deprecated' }
QuestionRetriever >> initialize [
	"option := #social"
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
  |qRet|
	qRet := OrderedCollection new.
   qRet := self getQuestions: aUser. 
   qRet := qRet last: (100 min: qRet size).
	^qRet reject:[:q | q user = aUser].
]

{ #category : #sorting }
QuestionRetriever >> sortQuestions: questions [ 

 ^ questions asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size]
]
