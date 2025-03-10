---
name: extractmetadata
description: extracts the metadata from a pdf.
type: method
visitiblity: public
parameters: 
returns: array $metadata
dependencies:
exceptions:
  - If file cannot load
  - if the parsing action results in an error
logger: Log all exceptions
---


**Steps**
- Verify that we are working with a valid file
- Create a new pdf Parser
- parse the file
- Extract the metadata
- Return array

**Test**
- Can extract metadata from a valid file
- Does fail if trying to extract metadata from an invalid file

