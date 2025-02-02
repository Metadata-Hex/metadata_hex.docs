---
name: isValidFile
description: returns if file exists
type: method
visitiblity: protected
parameters: 
returns: bool $was_file_found
dependencies:
exceptions:
log:
---


**Steps**
- using the fileUri, returns the result with
	- Does file exist
	- Is_readable

**Test**
- Does return true if fileUri is valid
- Does return false if fileUri is invalid

