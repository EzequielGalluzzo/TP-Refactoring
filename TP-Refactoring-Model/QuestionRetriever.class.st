Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: aCuoora [ 
	^ self new withCuoora: aCuoora
]

{ #category : #'old - deprecated' }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #retrieving }
QuestionRetriever >> getQuestions: aUser [
	self subclassResponsibility 
]

{ #category : #'old - deprecated' }
QuestionRetriever >> initialize [
	"option := #social"
]

{ #category : #retrieving }
QuestionRetriever >> removeLastHundred: qRet [
	^ qRet last: (100 min: qRet size)
]

{ #category : #retrieving }
QuestionRetriever >> removeUserQuestions: aUser fromQuestions: qRet [
	^ qRet reject: [ :q | q isOfUser: aUser ]
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	| qRet |
	qRet := self getQuestions: aUser.
	qRet := self removeLastHundred: qRet.
	qRet := self removeUserQuestions: aUser fromQuestions: qRet.
	^ qRet
]

{ #category : #sorting }
QuestionRetriever >> sortQuestions: questions [ 

 ^ questions asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size]
]

{ #category : #accessing }
QuestionRetriever >> withCuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]
