---
name: setRevision
description: sets the revision message when updating
type: method
visitiblity: protected
parameters: 
returns: 
dependencies:
exceptions:
log:
---


**Steps**
- check if revisioning is available
	- If so
		- set a new revision
		- Generate the revision log message
		- Set node revision

**Test**
- Can set a revision message
- Does not fail if revisioning isn’t present

