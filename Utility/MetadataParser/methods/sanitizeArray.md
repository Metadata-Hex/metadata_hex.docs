---
name: sanitizeArray
description: sanitizes an arrays keys and values to prevent injection etc
type: method
visitiblity: protected
parameters: array $unsanitized_array
returns: array $sanitized_array
dependencies:
exceptions:
log:
---


**Example Input**

```
[
    "title" => “Working Man <script=’…..’”,
    "author" => " John Doe",
    "createdDate" => "2025-01-01#",
    "keywords " => ["sample", "document", "pdf"]
];
```

**Example Return**

```
[
    "title" => “Working Man”
    "author" => "John Doe",
    "createdDate" => "2025-01-01",
    "keywords" => ["sample", "document", "pdf"]
];
```

**Steps**
- Trims white spaces for k=>v
- Remove HTML tags for k=>v
- Convert special characters to prevent XSS
- If [MetadataParser#$strictHandling]
	- Remove any characters that aren’t alphanumeric or basic punction
- Return sanitized array

**Test**
- Can pass a dirty array in and receive a cleaned array
- Can pass a clean array in and receive the same array
- Does fail if input isn’t an associative array
- Does fail if cleaned array is empty

