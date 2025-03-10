---
name: MarkdownFileHandler
description: This md file handler is responsible for ingesting and extracting the metadata
type: class
abstract: false
namespace: Drupal\metadata_hex\Handler
dependencies:
  - Symphony\YAML
extends:
  - FileHandler
  - MetadataHexCore
injects: 
attributes: []
methods:
  - "[[Handler/DocxFileHandler/methods/extractMetadata|extractMetadata]]"
  - "[[Handler/DocxFileHandler/methods/getSupportedExtentions|getSupportedExtentions]]"
security_considerations: 
performance_considerations:
---


