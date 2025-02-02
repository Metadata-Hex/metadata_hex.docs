---
name: getNode
description: returns the node from a passed nid
type: method
visitiblity: protected
parameters: 
returns: Node $node
dependencies:
exceptions:
logs:
---


**Steps**
- Load the node from [NodeMetadataEntity#$nid]
- If a node is loaded, return the node
- If no node found, return null

**Test**
- Can send a nid and receive a node
- Can send a non-nid and receive null

