---
name: ingestNodeFileMeta
description: returns the extracted metadata from a node’s files
type: method
visitiblity: protected
parameters: 
returns: array $metadata_from_node | void
dependencies:
exceptions:
log: 
---


**Steps**
- get list of file/entity ref fields
- filter out extensions not supported (setting?)
- For each ^ on node
	- extract metadata from file and return the array

**Test**
- Can receive an array of metadata
- Does not throw an error

