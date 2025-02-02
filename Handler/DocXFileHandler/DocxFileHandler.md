---
name: DocxFileHandler
description: This docx file handler is responsible for ingesting and extracting the metadata
type: class
abstract: false
namespace: Drupal\metadata_hex\Handler
dependencies:
  - PhpOffice\PhpWord\IOFactory
extends:
  - FileHandler
injects: 
attributes: []
methods:
  - "[[Handler/DocxFileHandler/methods/extractMetadata|extractMetadata]]"
  - "[[Handler/DocxFileHandler/methods/getSupportedExtentions|getSupportedExtentions]]"
security_considerations: 
performance_considerations:
---


