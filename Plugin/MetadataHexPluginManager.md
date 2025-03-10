---
name: MetadataHexPluginManager
description: This class serves as the plugin manager for the Metadata Hex module, handling plugin discovery and management.
type: class
namespace: Drupal\metadata_hex\Plugin
dependencies:
  - Drupal\Core\Cache\CacheBackendInterface
  - Drupal\Core\Extension\ModuleHandlerInterface
  - Drupal\Core\Plugin\DefaultPluginManager
  - Drupal\Core\Plugin\Discovery\AnnotatedClassDiscovery
  - Traversable
extends:
  - DefaultPluginManager
methods:
  - "[[__construct]]"
security_considerations: 
performance_considerations:
---

**__construct**

    /**
     * Constructs the MetadataHexPluginManager.
     *
     * @param Traversable $namespaces
     *   The available namespaces.
     * @param CacheBackendInterface $cache_backend
     *   The cache backend instance.
     * @param ModuleHandlerInterface $module_handler
     *   The module handler instance.
     */
    public function __construct(Traversable $namespaces, CacheBackendInterface $cache_backend, ModuleHandlerInterface $module_handler) {
        parent::__construct(
            'Handler',
            $namespaces, 
            $module_handler,
            'Drupal\metadata_hex\Handler\FileHandlerInterface', 
            'Drupal\metadata_hex\Annotation\MetadataHex' 
        );

        $this->alterInfo('metadata_hex_info');
        $this->setCacheBackend($cache_backend, 'metadata_hex_plugins');
    }