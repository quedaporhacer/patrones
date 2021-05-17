Class {
	#name : #Directorio,
	#superclass : #FyleSystem,
	#instVars : [
		'fylesistems'
	],
	#category : #'O2-FileSystem'
}

{ #category : #'as yet unclassified' }
Directorio class >> llamado: unString creadoEl: unaFecha [
	^ self new intializellamado: unString creadoEl: unaFecha
]

{ #category : #'as yet unclassified' }
Directorio >> intializellamado: unString creadoEl: unaFecha [ 
	nombre := unString.
	creacion := unaFecha.

]

{ #category : #'as yet unclassified' }
Directorio >> tamanoTotalOcupado [
	^fylesistems sumNumbers: [:fylesistem | fylesistem tamanoTotalOcupado ] + 32
]
