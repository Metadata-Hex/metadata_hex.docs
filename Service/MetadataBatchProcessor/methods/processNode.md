---
name: processNode
description: Processes a node and updates its metadata
type: method
visitiblity: protected
parameters: string $nid
returns: 
dependencies:
exceptions:
log:
---


**Steps**
- Verify nid is valid
- Create a new instance of [MetadataEntity], passing in the nid
- Save meta

**Tests**
- can pass a nid in and receive no errors
- Can pass a nid with pdf meta updates and node is updated
- Does fail if a nid / node is invalid
