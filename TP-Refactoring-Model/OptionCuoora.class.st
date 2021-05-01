Class {
	#name : #OptionCuoora,
	#superclass : #QuestionRetriever,
	#instVars : [
		'isPopular'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #initialization }
OptionCuoora >> initialize [ 	
	cuoora := CuOOra soleInstance.
	
]

{ #category : #abstract }
OptionCuoora >> myQuestions [
		^ self sortQuestions: (isPopular ifTrue:[ cuoora popularToday] ifFalse: [cuoora todaysQuestions])
		
]
