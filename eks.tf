provider "aws"{
        region = "us-east-2"
}
resource "aws_eks_cluster" "ashwini-cluster"{
	role_arn= "arn:aws:iam::853931821519:role/sai-eks-role"
        name= "ashwini-cluster"
        vpc_config{
		security_group_ids= [
                  "sg-0c136e9c7e59ce124"]
		endpoint_private_access= true
                subnet_ids= [
                  "subnet-02edf4763a93e947e",
                  "subnet-03552d345c894723e",
                  "subnet-07e4a9548d8516e3a"
                ]
                
        }
	#configurations
}
