Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'option',
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora and: aSymbol [
	^ self new cuoora: cuoora; option:aSymbol; yourself.
]

{ #category : #'old - deprecated' }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #initializing }
QuestionRetriever >> initialize [
	"option := #social"
]

{ #category : #abstract }
QuestionRetriever >> myQuestions [
 self subclassResponsibility 
]

{ #category : #accesing }
QuestionRetriever >> option: anOption [
	option := anOption
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	| qRet|
	qRet := OrderedCollection new.
	qRet := option myQuestions.
   qRet := qRet last: (100 min: qRet size).
	^qRet reject:[:q | q user = aUser].
]

{ #category : #sorting }
QuestionRetriever >> sortQuestions: questions [ 

 ^ questions asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size]
]

{ #category : #accesing }
QuestionRetriever >> withOption: anOption [
	option := anOption
]
