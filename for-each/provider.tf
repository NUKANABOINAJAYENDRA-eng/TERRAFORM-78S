terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.48.0"
        }
    }
    backend "s3" {
        bucket = "jay78-remote-state"
        key    = "jay-remote-loops"    
        
        #--> we should always change the key in s3 for every bucket/object.


        region = "us-east-1"
        dynamodb_table = "jay-locking"
    }
}

provider "aws" {
    region = "us-east-1"
}