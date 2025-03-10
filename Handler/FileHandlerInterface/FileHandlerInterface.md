---
name: FileHandlerInterface
description: This interface defines a contract for processing files in the Metadata Hex module. Implementing classes must provide a method to process files based on a given file path.
type: interface
namespace: Drupal\metadata_hex\Handler
dependencies: 
  - Drupal\Component\Plugin\PluginInspectionInterface
methods:
  - "[[process]]"
security_considerations: 
performance_considerations:
---

**process**

    /**
     * Processes the file.
     *
     * @param string $file_path
     *   The path to the file.
     *
     * @return mixed
     *   The result of processing.
     */  
    public function process($file_path): mixed;