---
name: loadFromFile
description: loads and initializes an MetadataEntity via a file uri
type: method
visitiblity: protected
parameters: string $file_uri
returns: 
dependencies:
exceptions:
log: 
---

**Example Input**
 `public://pdfs/sample.pdf`

**Steps**
- Accept uri
- Initialize new FileHandler with uri
- Init node
- Extracts meta?

**Test**
- Can pass a valid uri and receive a MetadataEntity in return
- does fail when pass an invalid uri in 

