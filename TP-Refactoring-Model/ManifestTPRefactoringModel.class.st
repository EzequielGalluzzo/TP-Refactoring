"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestTPRefactoringModel,
	#superclass : #PackageManifest,
	#category : #'TP-Refactoring-Model-Manifest'
}

{ #category : #'code-critics' }
ManifestTPRefactoringModel class >> ruleRBUsesAddRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#'TP-Refactoring-Model')) #'2021-05-01T10:36:18.957128-03:00') )
]
