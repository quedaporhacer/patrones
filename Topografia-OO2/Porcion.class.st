Class {
	#name : #Porcion,
	#superclass : #'Topografía',
	#category : #'Topografia-OO2-model'
}

{ #category : #comparing }
Porcion >> equals: aTopography [
	"aTopography isPorcion
		ifFalse: [ ^ false ].
		^ self calculate = aTopography calculate
		"
 
	^ self class = aTopography class
]

{ #category : #testing }
Porcion >> isPorcion [
	^ true
]
