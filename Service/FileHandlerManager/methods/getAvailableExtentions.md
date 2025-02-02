---
name: getAvailableExtentions
description: retrieves the available extentions
type: method
visitiblity: protected
parameters: 
returns: 
dependencies:
exceptions:
log:
--- # getAvailableExtentions

**Steps**
- for each over the pluginManager definitions
	- Append supported extentions to array
- Return array

**Test**
- ==Can send a nid and receive a node==
- ==Can send a non-nid and receive null==
