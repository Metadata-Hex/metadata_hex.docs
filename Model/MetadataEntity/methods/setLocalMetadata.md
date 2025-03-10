---
name: setLocalMetadata
description: sets the local metadata
type: method
visitiblity: public
parameters: 
- array $metadata
- mixed $raw
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

