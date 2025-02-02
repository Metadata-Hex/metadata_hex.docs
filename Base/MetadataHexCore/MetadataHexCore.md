---
name: MetadataHexCore
description: Initializes several services available for all code flows
type: class
abstract: true
namespace: Drupal\metadata_hex\Base
dependencies:
  - Psr\Log\LoggerInterface
  - Exceptions
  - Drupal\Core\Config\ConfigFactoryInterface
extends: 
injects: 
depends: 
attributes:
  - "[[logger]]"
methods:
  - "[[guard]]"
---


**__construct**

``` 
    public function __construct(LoggerInterface $logger) { //example
        $this->logger = $logger;
    }
```
