Class {
	#name : #OptionUser,
	#superclass : #Option,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
OptionUser >> myQuestions [
			^ self sortQuestions: (collection flatCollect: [ :each |each questions ]) 

]
