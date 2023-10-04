# This is a demo of how to Deploy Auto Scaling Group using pure Terraform Code.

# Prerequisite
1) Already S3 Bucket 'pritam-test-autoscale-bucket' was created to store the state file.

*Resource Created using the Terraform Code
# 1) ONE VPC


   ![image](https://github.com/devops-pritam/terraform/assets/132892500/619976b6-192b-47a6-b09c-b750ff0d6f48)

2) TWO public and TWO private subnets
   ![image](https://github.com/devops-pritam/terraform/assets/132892500/6eb0bb56-1f9a-4a39-ad7e-c9b0f605d9f4)
3) ONE Internet Gateway
   ![image](https://github.com/devops-pritam/terraform/assets/132892500/b2997b0b-7c9e-4a11-ad90-87c72de0de8c)
4) ONE public and TWO private route tables
   ![image](https://github.com/devops-pritam/terraform/assets/132892500/0d9fd8d6-a7e7-4dbb-9c2a-61db5080eafa)
5) ONE NAT Gateway
   ![image](https://github.com/devops-pritam/terraform/assets/132892500/5afbfa53-4b34-4997-9e2e-1af97cf05abf)
6) ONE Security Group
   ![image](https://github.com/devops-pritam/terraform/assets/132892500/186b6cc1-1a1d-4651-892e-906f9ea4b3a3)
7) ONE Auto Scaling Group
   ![image](https://github.com/devops-pritam/terraform/assets/132892500/84e42dec-ad8a-43db-b4b0-67cb2eaed4f2)
8) ONE Application Load Balancer
   ![image](https://github.com/devops-pritam/terraform/assets/132892500/13eff929-6b2d-464e-91e5-7ca602fcc1bc)
After the deployment of entire infrastructure the outcome will be like these :
![image](https://github.com/devops-pritam/terraform/assets/132892500/9f137b9b-b1fd-4103-accf-bd434534f597)
![image](https://github.com/devops-pritam/terraform/assets/132892500/c1f58132-9221-40b7-9abe-d37d9b97b265)

