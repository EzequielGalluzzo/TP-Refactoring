Class {
	#name : #OptionUser,
	#superclass : #QuestionRetriever,
	#instVars : [
		'collection'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #collection }
OptionUser >> myQuestions [
			^ self sortQuestions: (collection flatCollect: [ :each |each questions ]) 

]
