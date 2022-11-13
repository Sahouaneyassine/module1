# Terraform `module1` module
## Why?

This module will help us transform a Liste ( Name ,LastName ,PhoneNum ) to another list which will contains only (Name, PhoneNum) .

## Arguments

- `person`                 - (List) Contains the details of the person (Prenom,Nom,PhoneNum) ?


## Outputs

- `list_converted`           - (List) The Person List details  converted :


## Example

```hcl-terraform
module "module1" {
  source             = "git@github.com:Sahouaneyassine/module1.git"
  person = ["yassine","sahouane","0654587"]
  }
  
```
