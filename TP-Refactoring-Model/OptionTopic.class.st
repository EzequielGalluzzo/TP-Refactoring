Class {
	#name : #OptionTopic,
	#superclass : #OptionSocial,
	#category : #'TP-Refactoring-Model'
}

{ #category : #sorting }
OptionTopic >> myQuestions: aUser [ 
^ self returnFiltered: (self sortQuestions: (aUser myInterests flatCollect: [ :each |each questions ])) of: aUser
]
