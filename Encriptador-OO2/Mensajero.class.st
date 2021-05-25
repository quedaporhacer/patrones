Class {
	#name : #Mensajero,
	#superclass : #Object,
	#instVars : [
		'conexión'
	],
	#category : #'Encriptador-OO2'
}

{ #category : #accessing }
Mensajero >> conexión [
	^ conexión
]

{ #category : #accessing }
Mensajero >> conexión: anObject [
	conexión := anObject
]

{ #category : #'as yet unclassified' }
Mensajero >> enviar: aMessage [
	^conexión enviar: aMessage 
	
]
