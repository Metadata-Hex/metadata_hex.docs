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
  - "[[config]]"
  - "[[DEFAULT_STRICT]]" 
  - "[[DEFAULT_FLATTEN]]" 
  - "[[DEFAULT_PROTECT_TITLE]]" 
  - "[[DEFAULT_PROTECT_DATA]]" 
methods:
  - "[[getExtractionSettings]]"
  - "[[getFieldMappings]]"
  - "[[getFileIngestSettings]]"
  - "[[getNodeProcessingSettings]]"

  - "[[getIngestField]]" 
  - "[[getDirectory]]" 
  - "[[getBundleType]]"
  - "[[getStrictHandling]]" 
  - "[[getProtectedData]]" 
  - "[[getProtectedTitle]]"  
  - "[[getFlattenKeys]]" 
  - "[[getAllowedNodeTypes]]"
security_considerations: 
performance_considerations:
---


**__construct**

```php
public function __construct(ConfigFactoryInterface $configFactory) {
    $this->configFactory = $configFactory;
  }
```
