# Devops Exercise

This Exercise consists of 3 parts.


## Description
### Script : Statistics ip address ranges
### Terraform : Create VM and load balance
### Ansible : Configure apache webserver

## Part One: script
#####The functions implemented by these two scripts are the same, one is implemented by powershell, the other is implemented by bash.
```
# print_aws_ip_ranges.ps1
```
```
# print_aws_ip_ranges.sh
```
The script download
the AWS IP Ranges JSON File https://ip-ranges.amazonaws.com/ip-ranges.json  and print all the IP ranges  for a region name, when
passed as a command line argument, print an error when an invalid region is passed and print an error when there's no region input.

For example:

```
$sh print_aws_ip_ranges.ps1 eu-west-1
```

```
$sh print_aws_ip_ranges.sh eu-west-1
```
	     
Will output all the IP ranges assigned to the region, and the total ip ranges numbers


```

```bash
$ terraform init
$ terraform validate -var-file=aws-demo.tfvars
$ terraform plan -var-file=aws-demo.tfvars
$ terraform apply -var-file=aws-demo.tfvars
```



## PART Two: Terraform 
This Terraform code create a VM in AWS cloud with apache webserver installed on it . The webserver run behind a Load Balancer(ELB). 
Details please open Terraform folder(terraform_webserver), see README.md


## PART Three: Ansible 

Details please open ansible folder(apache_runbook), see README.md

