Class {
	#name : #Blowfish,
	#superclass : #'EstrategiaDeEncriptación',
	#category : #'Encriptador-OO2'
}

{ #category : #'as yet unclassified' }
Blowfish >> encriptar: unString [
	^ ('blowfish' , unString)
]
