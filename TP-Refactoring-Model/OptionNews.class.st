Class {
	#name : #OptionNews,
	#superclass : #Option,
	#instVars : [
		'isPopular',
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #initialization }
OptionNews >> initialize [
	cuoora := CuOOra new.
]

{ #category : #abstract }
OptionNews >> myQuestions: aUser [
		^ self returnFiltered: (self sortQuestions: cuoora todaysQuestions) of: aUser
		
]

{ #category : #initialization }
OptionNews >> setCuoora: aCuoora [
	cuoora:= aCuoora 
]
