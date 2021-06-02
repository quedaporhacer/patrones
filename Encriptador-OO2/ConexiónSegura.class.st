Class {
	#name : #'ConexiónSegura',
	#superclass : #'Conexión',
	#instVars : [
		'encriptador'
	],
	#category : #'Encriptador-OO2'
}

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
