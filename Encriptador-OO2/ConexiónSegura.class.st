Class {
	#name : #'ConexiónSegura',
	#superclass : #'Conexión',
	#instVars : [
		'encriptador'
	],
	#category : #'Encriptador-OO2-model'
}

{ #category : #'instance creation' }
ConexiónSegura class >> new: unEncriptador [ 
	^self new initialize: unEncriptador 
]

{ #category : #accessing }
ConexiónSegura >> encriptador [
	^ encriptador 
]

{ #category : #accessing }
ConexiónSegura >> encriptador: unEncriptador [
	encriptador := unEncriptador
]

{ #category : #'as yet unclassified' }
ConexiónSegura >> enviar: aMessage [
	"| mensajeEncriptado |
	mensajeEncriptado := self encriptador encriptar: aMessage.
	^ super enviar: mensajeEncriptado"
	^ super enviar: (encriptador  encriptar: aMessage).
]

{ #category : #initialization }
ConexiónSegura >> initialize: unEncriptador [ 
	encriptador:= unEncriptador 
	 
]
