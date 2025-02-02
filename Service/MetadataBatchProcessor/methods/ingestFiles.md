---
name: ingestFiles
description: Scans for files in a given directory and returns an array
type: method
visitiblity: protected
parameters:
  - string $dir_to_scan
returns: 
dependencies: 
exceptions: 
log:
---


**Example Input**
`public://documents/pdfs/`

**Steps**
- Validate directory is a string
- Initialize Drupal file system
- get the real path from directory
- For each scandir(real path) results
	- If the file extension matches what we can process, append an array of filename and uri to this->files

**Test**
- can pass in real directory and get array of files
- Can pass in fake directory and receive no files / no errors
- Does not return invalid file extensions 

