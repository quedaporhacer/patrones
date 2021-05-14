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
	biblioteca := Biblioteca new: JSONExporter new.
	"biblioteca := Biblioteca new: VoorheesExporter new."
	"biblioteca := Biblioteca new: STONExporter  new."
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

	self assert: ((biblioteca exportarSocios) includesSubstring: '"nombre" : "Arya Stark"').
	self assert: ((biblioteca exportarSocios) includesSubstring: '"email" : "needle@stark.com"').
	self assert: ((biblioteca exportarSocios) includesSubstring: '"legajo" : "5234/5"').
	self assert: ((biblioteca exportarSocios) includesSubstring: '"nombre" : "Tyron Lannister"').
	self assert: ((biblioteca exportarSocios) includesSubstring: '"email" : "tyron@thelannisters.com"').
	self assert: ((biblioteca exportarSocios) includesSubstring: '"legajo" : "2345/2"').
	




]
