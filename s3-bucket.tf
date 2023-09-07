module "s3-bucket" {
  source  = "app.terraform.io/jokian/s3-bucket/aws"
  version = "2.8.0"
  bucket_prefix = "joki"
  acl    = "private"

  versioning = {
    enabled = true
  }

}


module "s3_bucket_for_logs" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "2.8.0"
  bucket_prefix = "joki"
  acl    = "log-delivery-write"

  # Allow deletion of non-empty bucket
  force_destroy = true

  attach_elb_log_delivery_policy = true
}

