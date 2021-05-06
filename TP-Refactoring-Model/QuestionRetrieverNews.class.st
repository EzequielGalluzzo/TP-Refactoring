Class {
	#name : #QuestionRetrieverNews,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #adapting }
QuestionRetrieverNews >> getQuestions: aUser [
	^ self sortQuestions: (cuoora todaysQuestions)
]
