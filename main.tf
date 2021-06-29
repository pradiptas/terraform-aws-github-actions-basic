provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_s3_bucket" "terra-githubactions-pradipta-test-20210529" {
  bucket = "terra-githubactions-pradipta-test-20210529"
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "terra-githubactions-pradipta-test-20210529" {
  bucket = aws_s3_bucket.terra-githubactions-pradipta-test-20210529.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

}