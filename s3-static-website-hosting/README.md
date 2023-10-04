# I have created S3 bucket and hosted static website. The entire infrastructure was deployed using Terraform IAC.

# Final output of this code was 

![image](https://github.com/devops-pritam/terraform/assets/132892500/b4be616f-868e-41af-b8bd-a9b9a1725e55)

# challenges faced

I was getting ACL error .

# solution
This issue was resolved by writting below lines in Module's main.tf file

## Note : I made this Bucket access public for deploying the static website and access that from internet. In realtime ACL may not be configure for the public access.

block_public_acls       = false
block_public_policy     = false
ignore_public_acls      = false
restrict_public_buckets = false

# AND 

depends_on = [
    aws_s3_bucket_ownership_controls.static_site,
    aws_s3_bucket_public_access_block.static_site,
  ]


# Need Help ?




