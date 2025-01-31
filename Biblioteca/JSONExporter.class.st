Class {
	#name : #JSONExporter,
	#superclass : #Object,
	#category : #Biblioteca
}

{ #category : #exporting }
JSONExporter >> export: socios [
	^ NeoJSONWriter 
		toStringPretty: (socios collect: [ :socio | self exportSocio: socio ])
]

{ #category : #exporting }
JSONExporter >> exportSocio: aSocio [
	^ Dictionary new
		at: #legajo put: aSocio legajo;
		at: #email put: aSocio email;
		at: #nombre put: aSocio nombre;
		yourself
]
