---
name: getHandlerForExtension
description: retrieves the handler for the extention
type: method
visitiblity: protected
parameters: 
returns: 
dependencies:
exceptions:
log:
--- # getHandlerForExtension

**Steps**
- Passes in file extention
- iterates over plugin manager definitions
	- if the extention is part of the plugin supported extentions return plugin
	- Else return null

**Test**
- Can pass in a supported file extension and receive the correct handler in return
- Does fail gracefully if an unsupported extension is passed
