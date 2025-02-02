---
name: explodeKeyValueString
description: Explodes the key|value values into an array
type: method
visitiblity: protected
parameters: string $fieldMappings
returns: array $parsedFieldMappings
dependencies:
exceptions:
log:
---


**Example Input**

```
title|Title,author|Author
```

**Example Return**

```
[
    "title" => “Title”,
    "author" => "Author",
]
```

**Steps**
- Confirms that the input is a string and is in expected format 
- Explodes the string across \n 
- For each over every line, split along | ‘s into a list
- trim keys
- Return the exploded array

**Test**
- Can send a string of field mapping and receive an array of those mappings in return
- Does fail if input string doesn’t match expected format
- Does fail if the input isn’t a string
- Does fail if the created array is empty

 /**
   * Explodes the key|value values into an array
   * @param mixed $input
   * @return string[]
   */
  function explodeKeyValueString($input)
  {
    // Split the input string by new lines
    $lines = explode("\n", $input);
    $result = [];

    foreach ($lines as $line) {
      // Split each line by the delimiter that separates the key and the value (e.g., a pipe)
      if (strpos($line, '|') !== false) {
        list($key, $value) = explode('|', $line);
        $result[trim($value)] = trim($key); //swapping these
      }
    }

    return $result;
  }
