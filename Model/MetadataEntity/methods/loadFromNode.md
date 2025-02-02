---
name: loadFromNode
description: loads and initializes an MetadataEntity via a nid
type: method
visitiblity: protected
parameters: string _nid
returns: bool $was_file_found
dependencies:
exceptions:
log: 
---

**Example Input**
 `4333`

**Steps**
- Accept nid
- Initialize new NodeBinder 
- Extracts meta?

**Test**
- Can pass a valid nid and receive a MetadataEntity in return
- does fail when pass an invalid nid in 

