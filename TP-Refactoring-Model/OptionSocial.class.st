Class {
	#name : #OptionSocial,
	#superclass : #Option,
	#category : #'TP-Refactoring-Model'
}

{ #category : #sorting }
OptionSocial >> myQuestions: aUser [
			^ self returnFiltered: (self sortQuestions: (aUser whoIFollow flatCollect: [ :each |each questions ])) of: aUser
			

]
