Class {
	#name : #QuestionRetrieverTopic,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
QuestionRetrieverTopic >> getQuestions: aUser [
		^ self sortQuestions: (aUser topics flatCollect: [ :each |each questions ]) 
]
