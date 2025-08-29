## Terraform Modular Deployments

This repository contains an infrastructure managed with **Terraform**, organized in a modular way with multiple **deployment scenarios**. 
It is designed to allow reusable modules and separation of environments or specific scenarios.

---

### Repository Structure

The main repository structure is as follows:

```
deployments
├── scenario_1
│   ├── main.tf
│   ├── providers.tf
│   ├── terraform.tfvars
│   └── variables.tf
├── scenario_2
│   ├── ...
modules
├── create_resource_1
│   ├── main.tf
│   ├── output.tf
│   ├── provider.tf
│   └── variables.tf
├── create_resource_2
│   ├── ...
```


- `deployments/`: Contains the different deployment scenarios.  
  Each scenario has its own configuration files (`main.tf`, `providers.tf`, `variables.tf`) and state files (`.tfstate` and `.tfvars`).

- `modules/`: Contains reusable modules for infrastructure components such as networks, servers, routers, volumes, and keypairs. Each module includes:
  - `main.tf`: resource definitions.
  - `variables.tf`: required variables.
  - `output.tf`: defined outputs.
  - `provider.tf`: specific provider configuration (if applicable).

---

### Files Ignored by `.gitignore`

To maintain security and avoid state conflicts, **certain files are not committed** to the repository:
````
- State files
*.tfstate
*.tfstate.*
crash.log
*.tfvars
- Terraform directories
.terraform/
.terraform.lock.hcl
- Backups
*.backup
*.bak
*.tmp
````

For creating a project, you will need in the base scenario directory:
````
├── scenario_1
│   ├── main.tf -> include the modules you need for deployment including the variables needed in each case.
│   ├── providers.tf -> include definition of provider version and variables values.
│   ├── variables.tf -> definition of variables and its name and type (optional include a description)
│   └── terraform.tfvars -> values for variables (private)
````

Example of "terraform.tfvars" in this case:

````
group_tfg = {
  user_name    = "" 
  tenant_name  = "" 
  password     = ""
  auth_url     = ""
  region       = "" 
  domain_id    = ""
}

## Keypair PUBLIC KEY ##

public_key = "..."

## External Network ID ##
external_network_id = "..."

## Image list ##
ubuntu_24_04_image_id = "..."
rocky_9_3_image_id = "..."
````
