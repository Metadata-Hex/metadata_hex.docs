---
name: MetadataEntity
description: An entity to encapsulate the node, metadata and file connection.
type: class
abstract: false
namespace: Drupal\metadata_hex\Model
dependencies:
  - Drupal\file\Entity\File;
  - Drupal\metadata_hex\Base\MetadataHexCore;
  - Drupal\metadata_hex\Model\NodeBinder;
  - Drupal\metadata_hex\Utility\MetadataParser;
  - Drupal\node\Entity\Node;
  - Exception;
  - Psr\Log\LoggerInterface;
extends:
  - MetadataHexCore
injects: 
attributes:
  - "[[dataProtected]]"
  - "[[metadataRaw]]"
  - "[[metadataMapped]]"
  - "[[metadataProcessed]]"
  - "[[Model/MetadataEntity/attributes/nodeBinder|nodeBinder]]"
  - "[[titleProtected]]"
  - "[[metadataProcessor]]"
methods:
  - "[[findMatchingTaxonomy]]"
  - "[[getMetadata]]"
  - "[[getNodeBinder]]"
  - "[[getParser]]"
  - "[[loadFromNode]]"
  - "[[loadFromFile]]"
  - "[[mapMetadata]]"
  - "[[writeMetadata]]"
  - "[[setLocalMetadata]]"
security_considerations: 
performance_considerations:
---


**Construct**

```php
public function __construct(LoggerInterface $logger) {
    $this->logger = $logger;
}
```

**init**

```php
protected function init($input) {
    if ($input instanceof File) {
        $this->loadFile($input->getFileUri());
    } elseif ($input instanceof Node) {
        $this->loadNode($input->id());
    } else {
        throw new \InvalidArgumentException("Invalid input provided.");
    }
}
```