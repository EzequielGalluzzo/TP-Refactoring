Class {
	#name : #QuestionRetrieverSocial,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
QuestionRetrieverSocial >> getQuestions: aUser [
		^ self sortQuestions: (aUser following flatCollect: [ :each |each questions ]) 
]
