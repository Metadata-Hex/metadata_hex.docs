---
name: processMetadataOnEntitySave
description: "Checks if the entity being saved matches the configured node types for processing. If a match is found, it starts a MetadataNodeBatchProcessor to process the entity."
type: method
visibility: "public"
parameters: 
  - string $operation_being_performed
  - Drupal\Core\Entity\EntityInterface $entity
returns: 
dependencies:
  - Drupal\Core\Entity\EntityTypeManagerInterface
  - Drupal\Core\Config\ConfigFactoryInterface
  - Drupal\metadata_hex\Service\MetadataNodeBatchProcessor
exceptions:
  - Logs an error if metadata processing fails.
log: Logs if the node type does not match configured types.
---


**steps:**
  - Retrieve the list of configured node types that should be processed from config.
  - Check if the entity is a node and if its type is in the list.
  - If the node type matches, instantiate the MetadataNodeBatchProcessor.
  - Pass the entity to the batch processor for metadata extraction.
  - Log success or failure of the processing attempt.