Class {
	#name : #QuestionRetrieverPopular,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #adapting }
QuestionRetrieverPopular >> getQuestions: aUser [
	^ self sortQuestions: (cuoora popularToday)
]
