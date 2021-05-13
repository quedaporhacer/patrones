Class {
	#name : #BibliotecaTest,
	#superclass : #TestCase,
	#instVars : [
		'biblioteca'
	],
	#category : #Biblioteca
}

{ #category : #running }
BibliotecaTest >> setUp [
	|  arya tyron |
	biblioteca := Biblioteca new: VoorheesExporter new.
	arya := Socio
		nombre: 'Arya Stark'
		email: 'needle@stark.com'
		legajo: '5234/5'.
	tyron := Socio
		nombre: 'Tyron Lannister'
		email: 'tyron@thelannisters.com'
		legajo: '2345/2'.
	biblioteca agregarSocio: arya.
	biblioteca agregarSocio: tyron
]

{ #category : #tests }
BibliotecaTest >> testExportarSocios [
	self
		assert: biblioteca exportarSocios
		equals:
'[
	{
		"nombre" : "Arya Stark",
		"email" : "needle@stark.com",
		"legajo" : "5234/5"
	},
	{
		"nombre" : "Tyron Lannister",
		"email" : "tyron@thelannisters.com",
		"legajo" : "2345/2"
	}
]'.


]
