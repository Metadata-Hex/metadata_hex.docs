---
name: extractmetadata
description: extracts the metadata from a docx.
type: method
visitiblity: protected
parameters: 
returns: array $metadata
dependencies:
exceptions:
  - If file cannot load
  - if the parsing action results in an error
log: 
---


**Steps**
- Verify that we are working with a valid file
- Create a new IOFactory and ingest the file
- Extracts the document metadata/info
- Returns array

**Test**
- Can extract metadata from a valid file
- Does fail if trying to extract metadata from an invalid file

