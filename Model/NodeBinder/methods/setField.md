---
name: setField
description: sets field data from extracted
type: method
visitiblity: protected
parameters: 
returns: 
dependencies:
exceptions:
log: 
---


**Steps**
- Passes in Field_name, value, overwrite
- If overwrite is true, or (if overwrite false and field value is empty)
- Set field

**Test**
- Can set fields of all types supported
- Invalid field type fails gracefully

