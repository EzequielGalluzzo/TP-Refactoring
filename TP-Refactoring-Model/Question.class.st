Class {
	#name : #Question,
	#superclass : #Publication,
	#instVars : [
		'title',
		'answers',
		'topics'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser [
 	|question|
	question:= self setUser: aUser.
	^ question
		title: title;
		description: aDescription;
		yourself.
]

{ #category : #'instance creation' }
Question class >> newWithTitle: aTitle description: aDescription user: aUser topic: aTopic [
	|question| 
	question := self setUser: aUser. 
	^ question 
	title: aTitle;
	description: aDescription;
	addTopic: aTopic;
	yourself

]

{ #category : #adding }
Question >> addTopic: aTopic [
	topics add: aTopic.
	aTopic addQuestion: self.

]

{ #category : #'initalize-release' }
Question >> initialize [
	super initialize.
	answers := OrderedCollection new.
	topics := OrderedCollection new.
]

{ #category : #testing }
Question >> isFromToday [
^ timestamp asDate = Date today	
]

{ #category : #testing }
Question >> isOfUser: aUser [
	^ user = aUser
]

{ #category : #accessing }
Question >> title [
	^title 
]

{ #category : #accessing }
Question >> title: aTitle [
	title := aTitle 
]

{ #category : #accessing }
Question >> topics [
	^topics 
]
