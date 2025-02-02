---
name: getFileReferences
description: finds all entity references to a file
type: method
visitiblity: protected
parameters: 
returns: array $referenced_entity_ids
dependencies:
exceptions:
log: 
---


**Steps**
- Load the Drupal file entity by uri
- IIf file is found,
	- File = reset(file) 
	- Retrieve the Drupal usages using the file.usage service -> list usage
	- If there are usages, initialize an entity_id array
		- For each usages as module => usage
		- For each usage as entity_type => entities
		- For each entities as entity_id=>count
			- If entity_type = node
				- Append the entity_id to the entity_id array
	- After iterating over all, set this>fileReferences to result
		- Example:
			 `['referenced' => TRUE, 'entity_ids' => [1, 34, 66]];`
- f the file isn’t found or if usages are empty, set this>fileReferences to 
			 `['referenced' => FALSE, 'entity_ids' => [];`

**Test**
- Can pass a file_uri for a file_entity and receive an array with nids in return
- Can pass a file_uri that doesn’t exist in the file system and receive an array with no nids
- Generated array matches expected format
- Does not fail

