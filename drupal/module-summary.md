
Metadata Hex
Introduction
Metadata Hex is a powerful Drupal module that automates metadata extraction, processing, and mapping for nodes and files. It supports structured metadata ingestion from PDFs and Markdown, dynamically associating extracted values with Drupal fields. This module streamlines content management by automating metadata handling, ensuring data consistency, and reducing manual input.

Features
✅ Automated Metadata Extraction
* Extracts metadata from PDFs using Smalot\PdfParser.
* Extracts metadata from Markdown using Symfony\Yaml.
* Future support for additional file types via plugin-based handlers.
✅ Node & File Processing
* Automatically processes nodes upon insertion via hook_node_insert().
* Dynamically ingests and categorizes uploaded files.
✅ Configurable Mappings
* Maps extracted metadata to Drupal entity fields.
* Provides strict handling and data protection options.
✅ Batch Processing
* Supports bulk metadata extraction and node updates.
* Allows processing of entire directories and file attachments.
✅ Admin Configuration
* Fully manageable from the Drupal admin panel at /admin/config/metadata_hex.

Post-Installation
After installing the module:
1. Navigate to Configuration → Metadata Hex Settings (/admin/config/metadata_hex).
2. Configure metadata extraction rules, including:
    * Node Processing: Enable automatic extraction for specific content types.
    * File Ingestion: Define monitored directories and metadata mappings.
    * Strict Handling: Enforce metadata validation rules.
3. New nodes of configured types will automatically have their metadata extracted and assigned.
4. To manually process files, run batch processing via the admin panel or Drush.

Additional Requirements
* Drupal Core (latest version recommended).
* PHP Libraries:
    * Smalot\PdfParser (for PDF metadata extraction).
    * Symfony\Yaml (for Markdown metadata parsing).

Recommended Modules/Libraries
* File Entity: Improves file management capabilities.
* Search API: Enhances metadata indexing and search functionality.
* Migrate API: Useful for bulk metadata migration from external sources.

Supporting this Module
If you find Metadata Hex useful, consider supporting its development: ☕ Buy Me a Coffee

Community Documentation
For additional resources, walkthroughs, and external documentation, visit:
* GitHub Repository: Metadata Hex
* Module Documentation: Metadata Hex Docs
* DrupalPod Demo: (Coming soon – stay tuned!)
