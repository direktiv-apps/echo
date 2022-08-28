
# echo 1.0

Echo JSON

---
- #### Categories: misc
- #### Image: direktiv.azurecr.io/functions/echo 
- #### License: [Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0)
- #### Issue Tracking: https://github.com/direktiv-apps/echo/issues
- #### URL: https://github.com/direktiv-apps/echo
- #### Maintainer: [direktiv.io](https://www.direktiv.io) 
---

## About echo

This function is echoing the JSON coming in. Please be aware that this can include secrets in plain text if they are in the payload. This function is for debugging. 

### Example(s)
  #### Function Configuration
```yaml
functions:
- id: echo
  image: direktiv.azurecr.io/functions/echo:1.0
  type: knative-workflow
```
   #### Basic
```yaml
- id: echo
  type: action
  action:
    function: echo
    input: 
      hello: world
```

   ### Secrets


*No secrets required*







### Request



#### Request Attributes
[interface{}](#interface)

### Response
  Echo of request
#### Example Reponses
    
```json
"world"
```

### Errors
| Type | Description
|------|---------|
| io.direktiv.command.error | Command execution failed |
| io.direktiv.output.error | Template error for output generation of the service |
| io.direktiv.ri.error | Can not create information object from request |


### Types 
