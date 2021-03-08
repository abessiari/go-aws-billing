# Provision AWS instance.

## Requirements 

- The steps below were successfully tested using:
    - Terraform (0.14.4)

#### Install Terraform

- Go to [url](https://learn.hashicorp.com/tutorials/terraform/install-cli)

#### AWS Credentials.
- Create a file or override the location in aws/provider.tf

```
[default]
aws_access_key_id = XXXX
aws_secret_access_key = XXXX
```

#### EMAILS 
- Overide the emails used in vars.tf

```
variable "emails" {
  description = "List of emails"
  type = list(string)
  default = ["xxx@gmail.com"]
}
```


#### Create AWS instance: 

Note: Terraform creates some folders and files to maintain the state. Use <i>ls -a aws</i>

```sh
# This will install the aws provider. 
terraform init

# Validate the config
terraform validate

# View what is going to be created. The plan.
terraform plan

# This will create the vpc, security group and the instance
terraform apply

# To view the outputs
terraform output 

#To view what was deployed:
terraform show 

```
