

```
metadata_hex.settings:
  type: "config_object"
  label: "Metadata Hex Settings"
  mapping:
    extraction_settings:
      type: "mapping"
      label: "Extraction Settings"
      mapping:
        hook_node_types:
          type: "sequence"
          label: "Node types for extraction hooks"
          sequence:
            type: "string"
        field_mappings:
          type: "sequence"
          label: "Field mappings (PDF to Drupal)"
          sequence:
            type: "mapping"
            mapping:
              pdf_field:
                type: "string"
                label: "PDF Field"
              drupal_field:
                type: "string"
                label: "Drupal Field"
        strict_handling:
          type: "boolean"
          label: "Strict handling for string comparison"
          default: false
        data_protected:
          type: "boolean"
          label: "Protect existing data from being overwritten"
          default: true
        title_protected:
          type: "boolean"
          label: "Protect title from being overwritten"
          default: true
        available_extensions:
          type: "sequence"
          label: "Enabled file extensions"
          sequence:
            type: "string"
    node_process:
      type: "mapping"
      label: "Node Processing Settings"
      mapping:
        bundle_types:
          type: "sequence"
          label: "Bundle types to process"
          sequence:
            type: "string"
        allow_reprocess:
          type: "boolean"
          label: "Allow reprocessing of already processed nodes"
          default: false
    file_ingest:
      type: "mapping"
      label: "File Ingest Settings"
      mapping:
        bundle_type_for_generation:
          type: "string"
          label: "Bundle type for content generation"
        file_attachment_field:
          type: "string"
          label: "Field for attaching files"
        ingest_directory:
          type: "string"
          label: "Directory for file ingestion"
```
