---
name: getIsNodeProcessed
description: checks to see if the node has been processed
type: method
visitiblity: public
parameters: 
returns: bool $was_file_found
dependencies:
exceptions:
log: 
---


**Steps**
- Verifies node can be loaded from nid
- Initialize database 
- Grab processed record for entity, defaulting to bool
- Return processed bool

**Test**
- Can receive true for a record that’s been processed
- Can received false for a record that’s not been processed



