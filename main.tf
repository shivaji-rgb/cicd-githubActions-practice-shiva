resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/22"
    tags={
        Name = "shiva-vpc"   
    }
  
}

resource "aws_subnet" "dev"{
    cidr_block = "10.0.0.0/24"
    vpc_id = aws_vpc.name.id
    tags = {
        Name = "subnet-1-cicd-github"
    }
}