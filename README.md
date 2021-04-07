# Provision AWS instance.

## Requirements 

- The steps below were successfully tested using:
    - Terraform (0.14.4)

#### Install Terraform

- Go to [url](https://learn.hashicorp.com/tutorials/terraform/install-cli)

#### AWS Credentials.
- Export these variables

```
export AWS_ACCESS_KEY_ID="XXX"
export AWS_SECRET_ACCESS_KEY="YYY"
export AWS_DEFAULT_REGION="us-west-2"
```

#### Overriding Variables
- The quickest way to override the variables (Emails, Services, Budget Limits) with experimental
  changes is to copy vars.tf to the override terraform file. 

- For more on overriding variables Go to [url](https://amazicworld.com/overriding-variables-in-terraform/)

```
cp vars.tf _override.tf
```

#### EMAILS 
- Add email addresses as needed.

```
variable "emails" {
  description = "List of emails"
  type = list(string)
  default = ["xxx@gmail.com"]
}
```

#### Services and Budget Limts : 

Example using EC2 and S3 services. You can add other services specified in service.tf.

```sh
variable "account_budget_limit" {
  type = string
  default = "20.0"
}

variable "services" {
  default = {
    EC2 = {
      budget_limit = "10.0"
    },
    S3 = {
      budget_limit = "5.0"
    }
  }
}
```

#### Deploy: 

Note: Terraform creates some folders and files to maintain the state. Use <i>ls -a aws</i>

```sh
# This will install the aws terraform provider. 
terraform init

# Validate the config
terraform validate

# View what is going to be created. The plan.
terraform plan

# This will create the budgets
terraform apply

#To view:
terraform show 

#To destroy:
terraform destroy 

```
