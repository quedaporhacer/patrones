Class {
	#name : #'ConexiónSegura',
	#superclass : #'Conexión',
	#instVars : [
		'encriptador'
	],
	#category : #'Encriptador-OO2'
}

{ #category : #accessing }
ConexiónSegura >> encriptador: aMessage [
	^encriptador encriptar: aMessage 
]

{ #category : #'as yet unclassified' }
ConexiónSegura >> enviar: aMessage [
	|mensajeEncriptado|
	mensajeEncriptado := self encriptador: aMessage.
	super enviar: mensajeEncriptado.
]
