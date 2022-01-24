Class {
	#name : #BaselineOfPlantUMLBridge,
	#superclass : #BaselineOf,
	#category : #BaselineOfPlantUMLBridge
}

{ #category : #baselines }
BaselineOfPlantUMLBridge >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			package: 'PlantUML Bridge';
			package: 'PlantUML Bridge-Tests' with: [ spec requires: #( 'PlantUMLBridge' ) ] ]
]
