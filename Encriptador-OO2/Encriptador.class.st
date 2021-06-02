Class {
	#name : #Encriptador,
	#superclass : #Object,
	#category : #'Encriptador-OO2'
}

{ #category : #'as yet unclassified' }
Encriptador >> encriptar: unString [
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Encriptador >> encriptar: aMessage aStrategy: anStrategy [
"Este metodo representa la implemtacion de lo solicitado sin utilizar el patron de diseño"
	anStrategy == 'RSA'
		ifTrue: [ ^ 'RSA ' , aMessage ].
	anStrategy == 'RC4'
		ifTrue: [ ^ 'RC4' , aMessage ].
	anStrategy == 'Blowfish'
		ifTrue: [ ^ 'Blowfish ' , aMessage ]
]
