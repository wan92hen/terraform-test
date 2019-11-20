variable "ak" {
}
variable "sk" {
}
provider "aws" {
  region  = "cn-northwest-1"
  access_key = "${var.ak}"
  secret_key = "${var.sk}"
}
resource "aws_s3_bucket" "cmp" {
  bucket        = "jenkins-terraform-test"
  acl           = "private"
  force_destroy = true

  tags = {
    Name      = "jenkins-terraform-test"
    Terraform = true
  }
}
output "s3_bucket" {
  value = "${aws_s3_bucket.cmp.bucket}"
}
