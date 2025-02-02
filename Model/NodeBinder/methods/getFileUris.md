---
name: getFileUris
description: retrieve file uris from a node
type: method
visitiblity: protected
parameters: 
returns: array $file_uris
dependencies:
exceptions:
log:
---


**Steps**
- get fields from node bundle
- Get allowed extensions
- foreach field definition
	- Compare type, looking for file or entity_reference
		- if file/entity_reference, double check that mime type == the extension
		- If so, append an uri to the file to this->files

**Test**
- Can retrieve an array when using a valid bundleType
- Does not throw an error

