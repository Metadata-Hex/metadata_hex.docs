---
name: initNode
description: Initilizes a blank node if no referenced is found
type: method
visitiblity: public
parameters: string $pdf_uri, $target-bundle, $field_name?
returns: Node $node
dependencies:
exceptions:
log: 
---


**Steps**
- Pass in uri, target bundle and field name 
Load file via uli
if results are not null, continue
If no node is found
	Create a new file entry, status perm
		Create a new node and pass new file entity in
	validate and save the node
	Return node

**Test**
- Can pass in a uri and receive a blank node in return
- Does not return a previously created node


