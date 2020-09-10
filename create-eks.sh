aws eks create-cluster \
   --region us-west-2 \
   --name cloudDevops \
   --kubernetes-version 1.17 \
   --role-arn arn:aws:iam::487913014725:role/EKS-user\
   --resources-vpc-config subnetIds=subnet-09ff20025c86bacc0,subnet-0a7906e41154e9f93,securityGroupIds=sg-0c4e2f13eac8d35d8