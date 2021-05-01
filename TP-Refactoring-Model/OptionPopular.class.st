Class {
	#name : #OptionPopular,
	#superclass : #OptionNews,
	#category : #'TP-Refactoring-Model'
}

{ #category : #abstract }
OptionPopular >> myQuestions: aUser [
		^ self returnFiltered: (self sortQuestions:  cuoora popularToday) of: aUser
]
