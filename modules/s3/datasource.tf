data "aws_s3_bucket" "bucket" {
  bucket = "${var.s3_buvket_name}-${terraform.workspace}"
}