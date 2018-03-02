actions
pullThen: aBlock
	UIManager default 
		informUser: ('Pushing to {1}' format: { self remoteName }) 
		during: [
			self withErrorHandlingDo: [ 
				self entity pull.
				Iceberg announcer announce: (IceRepositoryModified for: self entity).
				aBlock value ] ].
	