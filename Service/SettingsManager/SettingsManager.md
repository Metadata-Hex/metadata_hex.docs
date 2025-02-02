---
name: SettingsManager
description: This class handles retrieving admin settings and returns in a readable and expected format
type: class
abstract: false
namespace: Drupal\metadata_hex\Service
dependencies:
  - ConfigFactoryInterface
extends:
  - MetadataHexCore
injects: 
attributes:
  - "[[configFactory]]"
methods:
  - "[[getExtractionSettings]]"
  - "[[getFieldMappings]]"
  - "[[getFileIngestSettings]]"
  - "[[getNodeProcessingSettings]]"
security_considerations: 
performance_considerations:
---


**__construct**

```php
public function __construct(ConfigFactoryInterface $configFactory) {
    $this->configFactory = $configFactory;
  }
```