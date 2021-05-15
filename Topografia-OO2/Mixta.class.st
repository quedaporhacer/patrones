Class {
	#name : #Mixta,
	#superclass : #'Topografía',
	#instVars : [
		'topografías'
	],
	#category : #'Topografia-OO2-model'
}

{ #category : #'instance creation' }
Mixta class >> newFirst: aFirtTopography withSecond: aSecondTopography withThird: aThirdTopography withFourth: aFourthTopography [
	^ self new
		initializeFirst: aFirtTopography
		withSecond: aSecondTopography
		withThird: aThirdTopography
		withFourth: aFourthTopography; yourself.
]

{ #category : #'as yet unclassified' }
Mixta >> ajuste: aFloat [
	aFloat < 0.5 ifTrue: [ ^ aFloat * 1.03 ]. ^ aFloat
]

{ #category : #'as yet unclassified' }
Mixta >> calculate [
	^ ((topografías sumNumbers: [ :topografía | topografía calculate ])
		/ 4) 
]

{ #category : #'as yet unclassified' }
Mixta >> desperdicio [
	^ self ajuste: ((topografías sumNumbers: [ :topografía | topografía desperdicio ])
		/ 4) 
]

{ #category : #comparing }
Mixta >> equals: aTopography [
	"aTopography class = self class 
		ifFalse: [ ^ false ]."
	aTopography isPorcion
		ifTrue: [ ^ false ].
	^ (topografías first equals: aTopography topografias first)
		and: [ (topografías second equals: aTopography topografias second)
				and: [ (topografías third equals: aTopography topografias third)
						and: [ topografías last equals: aTopography topografias last ] ] ]
]

{ #category : #initialization }
Mixta >> initializeFirst: aFirtTopography withSecond: aSecondTopography withThird: aThirdTopography withFourth: aFourthTopography [
	topografías := OrderedCollection new.
	topografías add: aFirtTopography;add: aSecondTopography;add: aThirdTopography;add: aFourthTopography.
]

{ #category : #testing }
Mixta >> isPorcion [
	^false
]

{ #category : #'as yet unclassified' }
Mixta >> terrenoProductivo [
	^ (topografías sumNumbers: [ :topografía | topografía terrenoProductivo  ])
		/ 4
]

{ #category : #'as yet unclassified' }
Mixta >> topografias [
 ^topografías 
]
