Class {
	#name : #Encriptador,
	#superclass : #Object,
	#instVars : [
		'strategy'
	],
	#category : #'Encriptador-OO2'
}

{ #category : #'as yet unclassified' }
Encriptador >> encriptar: aMessage [ 
	^strategy encriptar: aMessage 
]

{ #category : #accessing }
Encriptador >> strategy [
	^ strategy
]

{ #category : #accessing }
Encriptador >> strategy: anObject [
	strategy := anObject
]
