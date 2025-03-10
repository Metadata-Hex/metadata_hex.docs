---
name: writeMetadata
description: writes the metadata to a node
type: method
visitiblity: public
parameters: 
returns: 
dependencies:
exceptions: Exception 
log: 
---


**Steps**
- verify the metadata_processed isn’t null
- For each processed data as field name=>value
	- Verify node has the field name
	- Grab field definition & type
	- Switch on field_type
		- case string, string long, text, text_long, text_with_summary
			- Set field
		- Case entity reference
			- If target_type is taxonomy
				- Explode value, for each terms
					- Trim term name
					- Check if term exists
					- Find target_bundle
					- Find matching terms
					- If no terms found
						- Create a new term, save and append to term_ids
					- Else may need to reset terms and append
					- Else append existing term to term_ids
				- Format terms with correct target_id
				- Set field to formatted term ids
			- If target_type isn’t taxonomy
				- Set the field target_id to value
		- Case Boolean, integer
			- Set field and cast
		- Case datetime
			- format a valid DateTime
			- Set field
		- Case list_string
			- Load field config by bundleType and fieldname
			- grab allowed values
				- If the value is in allowed values, set
				- Else log error
		- Default
			- Log error
	- Set revision
	- Save node
	- Set processed

**Test**
- Does write updated metadata to a node
- Does fail if passes in invalid field types
- Does log on errors
- Does fail on any exceptions
