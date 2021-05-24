Class {
	#name : #Mensajero,
	#superclass : #Object,
	#instVars : [
		'conexión'
	],
	#category : #'Encriptador-OO2'
}

{ #category : #'as yet unclassified' }
Mensajero >> enviar: aMessage [
	^conexión enviar: aMessage 
	
]
