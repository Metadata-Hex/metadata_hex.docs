---
name: PdfFileHandler
description: This class handles parsing operations for extracted metadata. It is responsible for validating field mappings, extracting and cleaning data, and ensuring compatibility with Drupal field structures.
type: class
abstract: false
namespace: Drupal\metadata_hex\Handler
dependencies:
  - Smalot\PdfParser\Parser
extends:
  - FileHandler
  - MetadataHexCore
injects: 
attributes: 
methods:
  - "[[Handler/PdfFileHandler/methods/extractMetadata|extractMetadata]]"
  - "[[Handler/PdfFileHandler/methods/getSupportedExtentions|getSupportedExtentions]]"
security_considerations: 
performance_considerations: 
---


