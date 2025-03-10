---
name: NodeBinder
description: This class encapsulates the object/functionality tied to node
type: class
abstract: false
namespace: Drupal\metadata_hex\Model
dependencies:
  - Drupal\Core\Database\Database;
  - Drupal\file\Entity\File;
  - Drupal\metadata_hex\Base\MetadataHexCore;
  - Drupal\metadata_hex\Service\FileHandlerManager;
  - Drupal\node\Entity\Node;
  - Exception;
  - Psr\Log\LoggerInterface;
extends:
  - MetadataHexCore
injects: 
attributes:
  - "[[nid]]"
  - "[[fid]]"
  - "[[uuid]]"
  - "[[settingsManager]]"
  - "[[fileHandlerManager]]"
methods:
  - "[[getFileUris]]"
  - "[[getBundleType]]"
  - "[[getWasNodeJustProcessed]]"
  - "[[getIsNodeProcessed]]"
  - "[[getNode]]"
  - "[[ingestNodeFileMeta]]"
  - "[[init]]"
  - "[[InitNode]]"
  - "[[save]]"
  - "[[setField]]"
  - "[[setProcessed]]"
  - "[[setRevision]]"
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