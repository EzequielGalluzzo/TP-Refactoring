Class {
	#name : #QuestionRetrieverTopic,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #adapting }
QuestionRetrieverTopic >> getQuestions: aUser [
		^ self sortQuestions: (aUser myInterests flatCollect: [ :each |each questions ]) 
]
