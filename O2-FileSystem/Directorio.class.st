Class {
	#name : #Directorio,
	#superclass : #FyleSystem,
	#instVars : [
		'filesistems'
	],
	#classInstVars : [
		'peso'
	],
	#category : #'O2-FileSystem'
}

{ #category : #'as yet unclassified' }
Directorio class >> llamado: unString creadoEl: unaFecha [
	^ self new intializellamado: unString creadoEl: unaFecha
]

{ #category : #'as yet unclassified' }
Directorio >> agregar: unFileSistem [
	filesistems add: unFileSistem 
]

{ #category : #'as yet unclassified' }
Directorio >> archivoMasGrande [
	^ (filesistems collect: [ :file | file archivoMasGrande ])
		detectMax: [ :file | file tamanoTotalOcupado ]
]

{ #category : #'as yet unclassified' }
Directorio >> archivoMasNuevo [
	^ (filesistems  collect: [ :dir | dir archivoMasGrande ])
		detectMax: [ :dir | dir creacion ]
]

{ #category : #'as yet unclassified' }
Directorio >> archivos [
	^ filesistems reject: [ :file | file esDirectorio  ]
]

{ #category : #'as yet unclassified' }
Directorio >> directorios [
	^ filesistems select: [ :dir | dir esDirectorio  ]
]

{ #category : #'as yet unclassified' }
Directorio >> esDirectorio [
	^true
]

{ #category : #'as yet unclassified' }
Directorio >> intializellamado: unString creadoEl: unaFecha [
filesistems := OrderedCollection new.
	nombre := unString.
	creacion := unaFecha
]

{ #category : #'as yet unclassified' }
Directorio >> listadoDeContenido [
	^self listadoDeContenido: ''
]

{ #category : #'as yet unclassified' }
Directorio >> listadoDeContenido: parentPath [
	| res |
	res := WriteStream on: String new.
	res << (parentPath , '/' , nombre).
	self archivos
		ifNotEmpty: [ res << (' (' , self archivos size asString , ' archivos)') ].
	self directorios
		do: [ :direct | 
			res
				<< '';
				cr.
			res << (direct listadoDeContenido: parentPath , '/' , nombre) ].
	^ res contents 
]

{ #category : #'as yet unclassified' }
Directorio >> tamanoTotalOcupado [
	^filesistems sumNumbers: [:fylesistem | fylesistem tamanoTotalOcupado ] + 32
]
