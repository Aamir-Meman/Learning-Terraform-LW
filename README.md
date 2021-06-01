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