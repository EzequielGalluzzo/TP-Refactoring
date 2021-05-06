Class {
	#name : #QuestionRetrieverSocial,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #adapting }
QuestionRetrieverSocial >> getQuestions: aUser [
		^ self sortQuestions: (aUser whoIFollow flatCollect: [ :each |each questions ]) 
]
