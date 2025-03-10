---
name: setProcessed
description: sets the node as processed
type: method
visitiblity: public
parameters: 
returns: 
dependencies:
exceptions:
log:
--- 
# setProcessed

**Steps**
- Verifies node can be loaded from nid
- Insert custom ‘processed record’

**Test**
- Can set a custom processed message
- Does not fail to insert custom processed record

