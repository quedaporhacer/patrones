Class {
	#name : #Porcion,
	#superclass : #'Topografía',
	#category : #'Topografia-OO2-model'
}

{ #category : #comparing }
Porcion >> equals: aTopography [
	^ self porcionDeAgua = aTopography porcionDeAgua
]

{ #category : #testing }
Porcion >> isPorcion [
	^ true
]
