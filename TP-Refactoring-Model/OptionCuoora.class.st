Class {
	#name : #OptionCuoora,
	#superclass : #Option,
	#instVars : [
		'isPopular',
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #abstract }
OptionCuoora >> myQuestions [
		^ self sortQuestions: (isPopular ifTrue:[ cuoora popularToday] ifFalse: [cuoora todaysQuestions])
		
]
