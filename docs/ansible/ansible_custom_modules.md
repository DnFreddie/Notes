---
title: 'Custom Ansible Modules'
date : 2024-10-30T20:09:10+01:00
draft: false
---

Wirting custom moduels is preety easy all it is to execute the  python and reutrn a json with specyfied keys 

Then put it to the `library diectory`

>**Example module 
```bash 
#!/usr/bin/python
#Rember about to not change the shebang line !!! 
from ansible.module_utils.basic import AnsibleModule

def runModule():
    module_args = {"go_pkg": {"type": "str", "required": True}}

    module = AnsibleModule(argument_spec=module_args, supports_check_mode=True)
    params = module.params

    go_pkg: str = params["go_pkg"]

    pkg_name = getPkgName(go_pkg)

    if not isPkgAvailable("go"):
        module.fail_json(msg="Failed to find 'go' on the system")

    installation_result = go_install(go_pkg)

    failed = installation_result["status"] == "failed"

    module.exit_json(changed=not failed, results=installation_result, failed=failed)


```
