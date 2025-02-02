---
name: BatchFinished
description: Callback function to print batch success messages
type: method
visitiblity: 
parameters:
  - bool $success
  - array $results
  - array $failed_operations
returns: 
dependencies: 
exceptions: 
log:
  - "Success with # of processed files"
  - failure with failed operations
---


**Steps**
- If success, print a message with count
- If fail, print a message with details
