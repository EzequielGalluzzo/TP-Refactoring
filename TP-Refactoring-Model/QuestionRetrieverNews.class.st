Class {
	#name : #QuestionRetrieverNews,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
QuestionRetrieverNews >> getQuestions: aUser [
	^ self sortQuestions: (cuoora todaysQuestions)
]
