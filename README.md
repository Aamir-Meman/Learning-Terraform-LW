# Learning-Terraform-LW

## Day 7

* [`length` function](https://www.terraform.io/docs/language/functions/length.html)
* [`element` function](https://www.terraform.io/docs/language/functions/element.html)
* [`count` Meta-Argument](https://www.terraform.io/docs/language/meta-arguments/count.html)
* Task
  * Create network/vpc/office
  * 1. VPC
    * Name
    * CIDR network range :- 10.0.0.0/16
  
  * 2. Internet Gateway
    * Name
  
  * 3. Attach IGW and VPC :- Step  a. and Step b.

  * 4. Subnet/labs :- 2
    * count = 2
    * Name: unique name : loop concept
  
  * 5. Routing table
    * Internet : 0.0.0.0/0 go to igw : step b

  * 6. Attach the RT step e to Subnet step d

## Day 8

* [`aws vpc` module](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest)

## Day 9

* [`lookup` function](https://www.terraform.io/docs/language/functions/lookup.html)
* [`k8s` configuration](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs)
* [`security group` dynamic block method](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)

## Day 11

* [`regex` function](https://www.terraform.io/docs/language/functions/regex.html)
* [`replace` function](https://www.terraform.io/docs/language/functions/replace.html)
* [`nested` module calling](https://stackoverflow.com/questions/54324265/terraform-nested-module-calling-and-outputs)
* [`datasource` used in terraform - stackoverflow](https://stackoverflow.com/questions/47721602/how-are-data-sources-used-in-terraform)
* [`datasource` from documentation](https://www.terraform.io/docs/language/data-sources/index.html)


`terraform workspace list`
`terraform workspace new dev`
`terraform workspace new prod`
`terraform workspace select prod`
