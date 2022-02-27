resource "aws_s3_bucket_object" "edls" {
  for_each = fileset("../edls/", "*")

  bucket = var.bucket_name
  key    = "edls/${each.value}"
  source = "../edls/${each.value}"
  etag = filemd5("../edls/${each.value}")
}