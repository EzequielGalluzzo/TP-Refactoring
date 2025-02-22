Class {
	#name : #CuOOra,
	#superclass : #Object,
	#instVars : [
		'users',
		'topics',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
CuOOra >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #adding }
CuOOra >> addQuestion: aQuestion forUser: aUser [
	aUser addQuestion: aQuestion.
	questions add: aQuestion.
]

{ #category : #adding }
CuOOra >> addTopic: aTopic [
	topics add: aTopic 

]

{ #category : #adding }
CuOOra >> addUser: aUser [
	users add: aUser 

]

{ #category : #initialize }
CuOOra >> initialize [
	users := OrderedCollection new.
	topics := OrderedCollection new.
	questions := OrderedCollection new
]

{ #category : #collection }
CuOOra >> popularToday [
	|averageVotes|
	 averageVotes:= (questions sum: [:q | q positiveVotes size ]) / self todaysQuestions size.
	^ self todaysQuestions select:[:q | q positiveVotes size >= averageVotes ].
]

{ #category : #accessing }
CuOOra >> questions [
	^ questions
]

{ #category : #collection }
CuOOra >> todaysQuestions [
	^  questions select: [ :q | q isFromToday  ]
]

{ #category : #accessing }
CuOOra >> topics [
	^ topics
]

{ #category : #accessing }
CuOOra >> users [
	^ users
]
