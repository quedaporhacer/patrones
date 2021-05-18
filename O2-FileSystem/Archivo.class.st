Class {
	#name : #Archivo,
	#superclass : #FyleSystem,
	#instVars : [
		'kBytes'
	],
	#category : #'O2-FileSystem'
}

{ #category : #'as yet unclassified' }
Archivo class >> llamado: unString creadoEl: unaFecha kBytes: unNumero [
	
	^self new intializellamado: unString creadoEl: unaFecha kBytes: unNumero
]

{ #category : #'as yet unclassified' }
Archivo >> esDirectorio [
	^false
]

{ #category : #'as yet unclassified' }
Archivo >> intializellamado: unString
		creadoEl: unaFecha
		kBytes: unNumero [
		
	nombre := unString.
	creacion := unaFecha.
	kBytes := unNumero 
]

{ #category : #'as yet unclassified' }
Archivo >> tamanoTotalOcupado [
	^ kBytes
]
