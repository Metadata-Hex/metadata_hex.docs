---
name: guard
description: executes a function with automatic error handling
type: method
visitiblity: protected
parameters: 
returns: array $referenced_entity_ids
dependencies:
throws: \Exception
exceptions:
log: All exceptions
---

**Example Implmentation**

```
    protected function guard(callable $callback, $default = null, ?string $context = null) {
        try {
            return $callback();
        } catch (Exception $e) {
            $message = $context ? "{$context}: {$e->getMessage()}" : $e->getMessage();
            $this->logger->error($message);

            // Optionally rethrow the exception if you want to force failures
            // throw $e;

            return $default;
        }
    }
}
```
