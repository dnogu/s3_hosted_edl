# s3_hosted_edl

Palo Alto EDL Hosted on Amazon S3 Static Website

Palo Alto EDLs allow for a single source to be updated and all firewalls in an environment to download those updates as early as little as 5 mins.  This can be very usefull when Security Operations identifies malicious source and destinations that need to be blocked.

This does not include the creating the S3 bucket and making it internally accessible.


## Usage
```hcl
vpc_id  = "vpc-*********"  /*Replace Stars with actual VPC ID*/
tags = {
    Environment = "prod",
    }
bucket_name = "The name of your bucket"
```

