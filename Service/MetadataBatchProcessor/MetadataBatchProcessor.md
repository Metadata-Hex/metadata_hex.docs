---
name: MetadataBatchProcessor
description: This class handles high-level PDF processing operations, such as categorizing, scanning, and processing PDF files and nodes. It coordinates interactions between other components like the PDF extractor and handles batch operations during cron runs.
type: class
abstract: false
namespace: Drupal\metadata_hex\Handler
dependencies:
  - Drupal\metadata_hex\Base\MetadataHexCore;
  - Drupal\metadata_hex\Model\MetadataEntity;
  - Drupal\metadata_hex\Service\MetadataExtractor;
  - Drupal\metadata_hex\Service\SettingsManager;
  - Exception;
  - Psr\Log\LoggerInterface;
extends:
  - MetadataHexCore
injects: 
attributes:
  - "[[bundleType]]"
  - "[[cron]]"
  - "[[file_system]]"
  - "[[files]]"
  - "[[settingsManager]]"
  - "[[Utility/MetadataParser/attributes/extractor|- extractor]]"
  - "[[files]]"
  - "[[reprocess]]"
methods:
  - "[[BatchFinished]]"
  - "[[categorizeFiles]]"
  - "[[processFile]]"
  - "[[processFileUri]]"
  - "[[processFiles]]"
  - "[[processNode]]"
  - "[[processNodes]]"
security_considerations: 
performance_considerations:
  - Batch process large directories to avoid memory exhaustion.
  - - caching for already processed files to reduce redundant operations.
  - Limit cron operations to a subset of files to improve runtime efficiency.
---


**__construct**

```php
public function __construct(LoggerInterface $logger, PdfExtractor $extractor) {
    $this->logger = $logger;
    $this->extractor = $extractor;
    $this->pdfFiles = [];
}
```

**init**

```php
public function init(string $bundleType, bool $cron = false, bool $reprocess = false) {
    $this->bundleTypeForCreate = $bundleType;
    $this->cron = $cron;
    $this->reprocess = $reprocess;
    $this->logger->info('PdfProcess initialized with bundle type: ' . $bundleType);
}
```
