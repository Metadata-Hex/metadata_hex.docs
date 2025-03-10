---
name: FileHandler
description: This abstract class handles parsing operations for extracted metadata. It is responsible for validating field mappings, extracting and cleaning data, and ensuring compatibility with Drupal field structures.
type: class
abstract: true
namespace: Drupal\metadata_hex\Handler
dependencies: 
extends:
  - PluginBase implements FileHandlerInterface, ContainerFactoryPluginInterface 
injects:
attributes:
  - "[[associatedentityIds]]"
  - "[[field]]"
  - "[[fileType]]"
  - "[[fileUri]]"
  - "[[file_system]]"
methods:
  - "[[__construct]]"
  - "[[setFileUri]]"
  - "[[getPluginId]]"
  - "[[getPluginDefinition]]"
  - "[[process]]"
security_considerations: 
performance_considerations:
---

**__construct**

    /**
     * Method: __construct
     */
    abstract public function __construct();

**setFileUri**

    /**
     * Method: setFileUri
     */
    abstract public function setFileUri();

**getPluginId**

    /**
     * Method: getPluginId
     */
    abstract public function getPluginId();

**getPluginDefinition**

    /**
     * Method: getPluginDefinition
     */
    abstract public function getPluginDefinition();

**process**

    /**
     * Method: process
     */
    abstract public function process();
