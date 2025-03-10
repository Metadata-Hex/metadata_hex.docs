---
name: findMatchingTaxonomy
description: matches a passed in string to available bundle taxonomy
type: method
visitiblity: protected
parameters: string $term_to_find
returns: array $matching_taxonomy_ids
dependencies:
exceptions:
log:
---

 
**Example Input**
`2024`

**Steps**
- verifies that the input is a string
- Lowercase the input
- Loads the available taxonomy terms for the bundle
- For each taxonomy term, check if its lowercase name matches the input and append to an array of matching terms
- Return the matching terms

**Test**
- Can send an input string and receive matching taxonomy terms from the current bundle
- Can send a non-matching string and receive an empty array
- Does log fieldmappings that dont match the available fields
- Does fail if the input isn’t a string

