Class {
	#name : #'TopografíaMixtaTest',
	#superclass : #TestCase,
	#instVars : [
		'agua',
		'tierra',
		'mixta'
	],
	#category : #'Topografia-OO2-test'
}

{ #category : #running }
TopografíaMixtaTest >> setUp [
	agua := Agua new.
	tierra := Tierra new.
	mixta := Mixta
		newFirst: agua
		withSecond: tierra
		withThird: agua
		withFourth: tierra
]

{ #category : #tests }
TopografíaMixtaTest >> testCalculate [
	self assert: agua porcionDeAgua equals: 1.
	self assert: tierra porcionDeAgua equals: 0.
	self assert: mixta  porcionDeAgua equals: 1 / 2
]

{ #category : #tests }
TopografíaMixtaTest >> testEqual [
	self assert: (agua equals: agua).
	self assert: (agua equals: tierra) not.
	self assert: (mixta equals: mixta).
	self assert: (agua equals: mixta) not.
	self assert: (mixta equals: agua) not.
	self deny: agua equals: tierra
]
