---
name: processFiles
description: processes through files in a directory
type: method
visitiblity: protected
parameters: 
returns: 
dependencies:
exceptions:
log:
---


**Steps**
- get directory for bundle type
- Ingest files
- Categorize files
- For each referenced file, 
	- Create MetadataEntity and process (???)
- For each unreferenced file,
	- init from pdf uri and process
- Log results

**Tests**
- can pass a directory with unreferenced pdfs in and receive attached nodes and meta in return
- Can pass a directory with referenced pdfs in and received updated nodes/meta in return
- Passing in an invalid directory results in a fail

