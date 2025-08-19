Notes for using application credentials in Openstack

### Step 1: Create and mount `clouds.yaml`
```bash
#!/bin/bash
# Create and mount the "clouds.yaml".
```

---

### Step 2: Access with username
After saving, access using the file `clouds.yaml` and the user (example: user named `prod`).

```bash
openstack --os-cloud pre server list
```

---

### Step 3: Test functionality
```bash
openstack token issue
```

---

### Options for Application Credentials

1. Create application credential from another credential:
   ```bash
   --unrestricted
   ```

2. Assign and limit possible actions for the credential:
   ```bash
   --role <role_name>
   ```

---

### Step 4: Create an application credential with options
```bash
openstack --os-cloud pre application credential create p1 --unrestricted --role reader
```

### Optional but recommended: Secret key will only appear once you create the application credential. 

It is highly recommended to save it up in the clouds.yml file.
