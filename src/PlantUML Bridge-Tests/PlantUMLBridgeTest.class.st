"
A PlantUMLBridgeTest is a test class for testing the behavior of PlantUMLBridge
"
Class {
	#name : #PlantUMLBridgeTest,
	#superclass : #TestCase,
	#instVars : [
		'pUMLBridge'
	],
	#category : #'PlantUML Bridge-Tests'
}

{ #category : #running }
PlantUMLBridgeTest >> setUp [
	super setUp.
	
	"Put here a common initialization logic for tests"
	pUMLBridge := PlantUMLBridge new.
]

{ #category : #test }
PlantUMLBridgeTest >> testPkzip [

	| zippedString |
	"PlantUML ignores the header and CRC"
	zippedString := pUMLBridge pkzip: 'Here is some text'.
	self assert: (pUMLBridge pkunzip: (zippedString copyFrom: 3 to: zippedString size -4)) equals: 'Here is some text'.
]

{ #category : #test }
PlantUMLBridgeTest >> testSourceFromUrl [

	self assert: 
		(pUMLBridge sourceFromUrl: 'https://www.plantuml.com/plantuml/jpg/SzIrSx8wt9IJasyF0000') 
		equals: 'A->B:Âllo?'.
]

{ #category : #test }
PlantUMLBridgeTest >> testUrlFromSource [
	
	self assert: (pUMLBridge urlFromSource: 'A->B:Âllo?') equals: 'SzIrSx8wt9IJasyF0000'.
]
