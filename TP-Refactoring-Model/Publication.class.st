Class {
	#name : #Publication,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'user',
		'votes',
		'description'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #initialization }
Publication class >> setUser: aUser [
	^ self new user: aUser; yourself.
]

{ #category : #adding }
Publication >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
Publication >> description [
	^ description
]

{ #category : #private }
Publication >> description: anObject [
	description := anObject
]

{ #category : #initialize }
Publication >> initialize [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #'new selection' }
Publication >> negativeVotes [
	^ votes reject: [ :vote | vote isLike]    
]

{ #category : #'new selection' }
Publication >> positiveVotes [
	^votes select: [ :vote |  vote  isLike ].
]

{ #category : #accessing }
Publication >> timestamp [
	^ timestamp
]

{ #category : #private }
Publication >> timestamp: anObject [
	timestamp := anObject
]

{ #category : #accessing }
Publication >> user [
	^ user
]

{ #category : #private }
Publication >> user: anObject [
	user := anObject
]

{ #category : #accessing }
Publication >> votes [
	^ votes
]
