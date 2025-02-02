---
name: cleanMetadata
description: Cleans and standardizes the metadata associative array
type: method
visitiblity: protected
parameters: array $dirty_metadata
returns: array $clean_metadata
dependencies:
exceptions:
log:
---


**Example Input**

```
[
    "Title" => "Sample Document",
    "author" => "John Doe",
    "createdDate" => "2025-01-01",
    "keywords" => ["sample", "document", "pdf"]
];
```

**Example Return:**

```
[
    "title" => "Sample Document",
    "author" => "John Doe",
    "created_date" => "2025-01-01",
    "keywords" => ["sample", "document", "pdf"]
];
```

**Steps**
- Validate that input is an associative array as expected
- Remove any key=>value pairs where either are empty
- If [PdfParser#$strictHandling] is false
	- clean and standardize the keys to lowercase for matching
	- Convert any camel case fields to snake_case
	- If any key duplicates after all of this, combine them
- Return the cleaned metadata associative array

**Test**
- Can pass an uncleaned non-normalized associative array and receive a normalized associative array in return
- Can pass an uncleaned non-normalized associative array with [PdfParser#strictHandling] on, and receive a cleaned and non-normalized associative array in return
- Does fail if input isn’t an associative array
- Does fail if cleaned array is empty