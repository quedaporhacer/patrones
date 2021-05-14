Class {
	#name : #STONExporter,
	#superclass : #Object,
	#category : #Biblioteca
}

{ #category : #exporting }
STONExporter >> export: socios [
	^ STONJSON
		toStringPretty: (socios collect: [ :socio | self exportSocio: socio ]) asArray   
]

{ #category : #exporting }
STONExporter >> exportSocio: aSocio [
	^ Dictionary new
		at: #legajo put: aSocio legajo;
		at: #email put: aSocio email;
		at: #nombre put: aSocio nombre;
		yourself
]
