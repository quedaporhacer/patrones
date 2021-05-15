Class {
	#name : #'TopografíaMixtaTest',
	#superclass : #TestCase,
	#instVars : [
		'a',
		'b',
		'c'
	],
	#category : #'Topografia-OO2-test'
}

{ #category : #running }
TopografíaMixtaTest >> setUp [

	a := Agua new.
	b := Tierra new.
	c := Mixta
		newFirst: a
		withSecond: b
		withThird: a
		withFourth: b
]

{ #category : #tests }
TopografíaMixtaTest >> testCalculate [
	self assert: a calculate equals: 1.
	self assert: b calculate equals: 0.
	self assert: c calculate equals: 1 / 2.

]

{ #category : #tests }
TopografíaMixtaTest >> testEqual [
	self assert: (a equals: a).
	self assert: (a equals: b) not.
	self assert: (c equals: c).
	self assert: (a equals: c) not.
	self assert: (c equals: a) not
]
