Class {
	#name : #Directorio,
	#superclass : #FyleSystem,
	#instVars : [
		'fylesistems'
	],
	#category : #'O2-FileSystem'
}

{ #category : #'as yet unclassified' }
Directorio >> tamanoTotalOcupado [
	^fylesistems sumNumbers: [:fylesistem | fylesistem tamanoTotalOcupado ] + 32
]
