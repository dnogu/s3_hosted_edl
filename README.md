# s3_hosted_edl
Palo Alto EDL Hosted on Amazon S3 Static Website

Palo Alto EDLs allow for a single source to be updated and all firewalls in an environment to download those updates as early as little as 5 mins.  This can be very usefull when Security Operations identifies malicious source and destinations that need to be blocked.

This does not include the creating the S3 bucket and making it internally accessible.

## Usage
### Terraform
```hcl
vpc_id  = "vpc-*********"  /*Replace Stars with actual VPC ID*/
tags = {
    Environment = "prod",
    }
bucket_name = "The name of your bucket"
```
### IP List
```sh
100.64.0.0/30
100.64.100.0/24
100.64.99.5-100.64.99.10
100.64.80.5 #comment
100.64.81.6 comment
```
### Domain List
```sh
*.company.com #Match everything all subdomains or company.com
*.click #Match all websites ending with a top-level domain of .click. 
^company.com #Match company.com exactly
^eng.company.com #Match subdomain eng.company.com exactly
```
### URL List
```sh
*.company.com   #Match all subdomians of a url i.e. eng.tools.company.com, support.tools.company.com, docs.company.com
^.company.com   #Carats match excat number of subdomains i.e. tools.company.com
^.^.company.com #Carats match excat number of subdomains i.e. eng.tools.company.com
```
