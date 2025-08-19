# Terraform Modular Deployments

This repository contains an infrastructure managed with **Terraform**, organized in a modular way with multiple **deployment scenarios**. 
It is designed to allow reusable modules and separation of environments or specific scenarios.

---

## Repository Structure

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

## Files Ignored by `.gitignore`

To maintain security and avoid state conflicts, **certain files are not committed** to the repository:

# Archivos de estado (no subir nunca)
*.tfstate
*.tfstate.*
crash.log
*.tfvars

# Directorios de terraform
.terraform/
.terraform.lock.hcl

# Backups
*.backup
*.bak
*.tmp

