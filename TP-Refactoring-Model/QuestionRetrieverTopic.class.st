Class {
	#name : #QuestionRetrieverTopic,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #adapting }
QuestionRetrieverTopic >> getQuestions: aUser [
		^ self sortQuestions: (aUser topics flatCollect: [ :each |each questions ]) 
]
