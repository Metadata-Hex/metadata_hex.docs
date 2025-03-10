---
name: MetadataExtractor
description: This class is responsible for extracting data (metadata) from a PDF file using a PdfParser service. It provides mechanisms for loading, parsing, and extracting metadata in compliance with Drupal’s standards.
type: class
abstract: false
namespace: Drupal\metadata_hex\Service
dependencies: 
  - Drupal\metadata_hex\Utility\MetadataParser as Parser;
  - Exception;
  - Psr\Log\LoggerInterface;
extends:
  - MetadataHexCore
injects: 
attributes: 
methods:
  - "[[Service/MetadataExtractor/methods/extractMetadata|extractMetadata]]"
security_considerations: 
performance_considerations:
  - Ensure file I/O operations are optimized, especially for large PDF files
---


**__construct**

```php
public function __construct(LoggerInterface $logger) {
    $this->logger = $logger;
}
```

**init**

```php
public function init() {
    // Additional initialization logic if needed
    $this->logger->info('PdfExtractor initialized');
}
```