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
Directorio >> agregar: unFileSistem [
	fylesistems add: unFileSistem 
]

{ #category : #'as yet unclassified' }
Directorio >> archivos [
	^ fylesistems select: [ :file | file class ~= self class  ]
]

{ #category : #'as yet unclassified' }
Directorio >> directorios [
	^ fylesistems select: [ :dir | dir esDirectorio  ]
]

{ #category : #'as yet unclassified' }
Directorio >> esDirectorio [
	^true
]

{ #category : #'as yet unclassified' }
Directorio >> intializellamado: unString creadoEl: unaFecha [
fylesistems := OrderedCollection new.
	nombre := unString.
	creacion := unaFecha
]

{ #category : #'as yet unclassified' }
Directorio >> listadoDeContenido [
	| res |
	res := WriteStream on: String new.
	res << ('/' , nombre).
	self archivos
		ifNotEmpty: [ res
				<< (' (' , self archivos size asString , ' archivos)');
				cr ].
			
	self directorios
		do: [ :direct | 
			res
				<< ('/' , nombre , direct listadoDeContenido contents);
				cr ].
	^ res
]

{ #category : #'as yet unclassified' }
Directorio >> tamanoTotalOcupado [
	^fylesistems sumNumbers: [:fylesistem | fylesistem tamanoTotalOcupado ] + 32
]
