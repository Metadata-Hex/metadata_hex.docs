---
name: loadBundleType
description: loads and returns the bundle type working with
type: method
visitiblity: protected
parameters: array $dirty_fieldmapping
returns: array $cleaned_fieldmapping
dependencies:
exceptions:
log:
---


**Steps**
- Filter out any [#$raw_metadata] array keys that aren’t in [PdfParser#$availableFields], logging removed keys and returning the cleaned array

**Test**
- Can send a field mapping array with non-matching fields, and receive a cleaned array of only matched 
- Can send a field mapping array with matching fields, and receive the same array
- Does log fieldmappings that dont match the available fields
- Does fail if the input isn’t an associative array
- Does fail if the cleaned array is empty

