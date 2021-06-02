Class {
	#name : #MensajeroTest,
	#superclass : #TestCase,
	#instVars : [
		'mensajero',
		'conexion'
	],
	#category : #'Encriptador-OO2-test'
}

{ #category : #'as yet unclassified' }
MensajeroTest >> encriptadorBlowfish [
	conexion encriptador: Blowfish new.
	self
		assert: (mensajero enviar: 'mensaje')
		equals: 'Blowfish mensaje'
]

{ #category : #'as yet unclassified' }
MensajeroTest >> encriptadorRC4 [
	conexion encriptador: RC4 new.
	self assert: (mensajero enviar: 'mensaje') equals: 'RC4 mensaje'
]

{ #category : #'as yet unclassified' }
MensajeroTest >> encriptadorRSA [
		self assert: (mensajero enviar: 'mensaje') equals: 'RSA mensaje'
]

{ #category : #running }
MensajeroTest >> setUp [
	conexion := ConexiónSegura new: RSA new.
	mensajero := Mensajero new: conexion
]

{ #category : #tests }
MensajeroTest >> testEnviar [
	self encriptadorRSA.
	self encriptadorRC4.
	self encriptadorBlowfish 
]
