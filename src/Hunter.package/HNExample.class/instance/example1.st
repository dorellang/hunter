examples
example1
	<script: 'self new example1'>
	
	| project |
	project := Hunter new stream: self example1JSON readStream; buildProject.
	(HNViz01 visualize: project) inspect