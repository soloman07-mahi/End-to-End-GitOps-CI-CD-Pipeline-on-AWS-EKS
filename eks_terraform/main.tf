provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "eks_demo" {
    bucket = "eks_demo_bucket"
    lifecycle{
        prevent_destroy =false
    }
}


resource "aws_dynamodb_table" "eks_demo" {
    name         = "eks_demo_table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "id"

    attribute {
        name = "id"
        type = "S"
    }
}