---
name: processFile
description: processes a file of metadata into a node
type: method
visitiblity: public
parameters: File $file
returns: 
dependencies:
exceptions:
log:
---


**Tests**
- can pass a directory with unreferenced pdfs in and receive attached nodes and meta in return
- Can pass a directory with referenced pdfs in and received updated nodes/meta in return
- Passing in an invalid directory results in a fail

