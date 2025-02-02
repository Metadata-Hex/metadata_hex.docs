---
name: FileHandlerManager
description: The file handler manager that helps manage extentions etc
type: class
abstract: false
namespace: Drupal\metadata_hex\Service
dependencies:
  - PluginManagerInterface
extends: 
injects: 
attributes:
  - "[[pluginManager]]"
methods:
  - "[[getAvailableExtentions]]"
  - "[[getHandlerForExtension]]"
security_considerations: 
performance_considerations:
---


