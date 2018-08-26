examples
example1
	<script: 'self new example1'>
	
	| project |
	project := HNJSONLoader buildMetamodelFromResultList: (HNJSONLoader loadFromJSONStream: self example1JSON readStream).
	(HNViz01 visualize: project) inspect