visiting
visitTemplateLiteral: aTemplateLiteral
	aTemplateLiteral expressions do: [ :expression | expression accept: self ] 
	