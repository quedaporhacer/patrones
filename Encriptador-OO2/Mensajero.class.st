Class {
	#name : #Mensajero,
	#superclass : #Object,
	#instVars : [
		'conexión'
	],
	#category : #'Encriptador-OO2-model'
}

{ #category : #'instance creation' }
Mensajero class >> new: unaConexión [ 
	^self new initialize: unaConexión 
]

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

{ #category : #initialization }
Mensajero >> initialize: unaConexión [
	conexión := unaConexión  
]
