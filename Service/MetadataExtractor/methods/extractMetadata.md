---
name: extractMetadata
description: Extracts metadata from a file
type: method
visitiblity: protected
parameters: string $file_uri
returns: array $extracted_metadata
dependencies:
exceptions:
log:
---


**Example Input**
 `public://documents/example.pdf`

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
- Validate $fileUri
- Use the [parser](MetadataExtractor.md#$parser) to open the pdf file
- Retrieve the raw metadata from the pdf [parser->getDetails()](MetadataExtractor.md#$parser) 
- Sanitize the array key/values [parser]->[[sanitizeArray]]
- Return the sanitized metadata associative array

**Test**
- Can initialize pdfExtractor
- can pass valid pdf uri and receives an associative array
- Does fail with invalid uri
- Does fail with valid uri to non-pdf