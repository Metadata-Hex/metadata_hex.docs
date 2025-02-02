---
name: FileHandler
description: This abstract class handles parsing operations for extracted metadata. It is responsible for validating field mappings, extracting and cleaning data, and ensuring compatibility with Drupal field structures.
type: class
abstract: true
namespace: Drupal\metadata_hex\Handler
dependencies: 
extends:
  - MetadataHexCore
injects: 
attributes:
  - "[[associatedEntityIds]]"
  - "[[fileId]]"
  - "[[fileType]]"
  - "[[fileUri]]"
methods:
  - "[[getFileReferences]]"
  - "[[GetFileType]]"
  - "[[IsValidFile]]"
security_considerations: 
performance_considerations:
---


**__construct**

    public function __construct(string $filePath)
    {
        $this->filePath = $filePath;
        $this->fileType = pathinfo($filePath, PATHINFO_EXTENSION);
    }

**extractMetadata**
 
    /**
     * Extract metadata from the file.
     * Must be implemented in child classes.
     * @return array
     */
    abstract public function extractMetadata(): array;

**getSuuportedExtentions**

    /**
     * returns the extensions supported.
     * Must be implemented in child classes.
     * @return array
     */
    abstract public function getSupportedExtentions(): array;