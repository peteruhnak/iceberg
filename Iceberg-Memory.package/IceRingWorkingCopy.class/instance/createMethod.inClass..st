as yet unclassified
createMethod: source inClass: aClassName
	
	| class method |
	class := ringEnvironment ensureClassNamed: aClassName.
	method := class ensureLocalMethodNamed: (RBParser parseMethod: source) selector.
	method sourceCode: source.
	method package: class package.
	dirtyPackages add: class package name.