---
name: MetadataParser
description: This class handles parsing operations for extracted metadata. It is responsible for validating field mappings, extracting and cleaning data, and ensuring compatibility with Drupal field structures.
type: class
abstract: false
namespace: Drupal\metadata_hex\Utility
dependencies: 
extends:
  - MetadataHexCore
injects: 
attributes:
  - "[[availableFields]]"
  - "[[Utility/MetadataParser/attributes/extractor|extractor]]"
  - "[[fieldMapping]]"
  - "[[strictHandling]]"
methods:
  - "[[cleanMetadata]]"
  - "[[cleanFieldMapping]]"
  - "[[explodeKeyValueString]]"
  - "[[sanitizeArray]]"
security_considerations: 
performance_considerations:
---


**__construct**

```php
public function __construct(LoggerInterface $logger, bundleType) {
    $this->logger = $logger;
    $this->bundleType = $bundleType;
} 
```

**init**

```php
public function init() {
	$this->availableFields = $this->bundleType->extractFields()->extractFieldNameValues()->toArray()
	Grab the  module configuration
	Extract the entered field mappings from config into an associate array
    $this->fieldMappings = this->cleanFieldMappings(extracted field maps);
    Initilizaes the extractor 
}
```