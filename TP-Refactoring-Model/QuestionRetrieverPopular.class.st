Class {
	#name : #QuestionRetrieverPopular,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
QuestionRetrieverPopular >> getQuestions: aUser [
	^ self sortQuestions: (cuoora popularToday)
]
