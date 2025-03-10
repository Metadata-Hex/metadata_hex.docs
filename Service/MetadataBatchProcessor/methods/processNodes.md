---
name: processNodes
description: processes through all nodes of a specific bundle type
type: method
visitiblity: public
parameters: 
returns: 
dependencies:
exceptions:
log:
---


**Steps**
- query the Drupal entity type manager for the assigned bundle
- For each nids as nid, [processNode]

**Tests**
- can accept a valid bundleType and iterate over nodes
- Does fail if an invalid node type is assigned

