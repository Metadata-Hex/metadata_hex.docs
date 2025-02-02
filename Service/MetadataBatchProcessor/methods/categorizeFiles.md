---
name: categorizeFiles
description: sorts through an array of files, categorizing them into processed and unprocessed 
type: method
visitiblity: protected
parameters: 
returns: 
dependencies:
exceptions:
log:
---


**Steps**
- Initialize 2 categories, processed and unprocessed
- Iterate through this->files
	- For each file
		- Check if the file exists in drupals database and is tied to a node
		       - If yes, and the node is processed: Add to the `processed` array.
		       - If yes and the node is unprocessed: Add to the `referenced` array.
		       - If no and no node: add to the `unreferenced` array

**Test**
- can pass an array of files in and receive a categorized array
- Does continue if file isn’t found