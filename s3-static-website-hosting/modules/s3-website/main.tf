resource "aws_s3_bucket" "static_site" {
  bucket = "${var.bucket_name}"
  

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "aws_s3_bucket_public_access_block" "static_site" {
  bucket = aws_s3_bucket.static_site.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_ownership_controls" "static_site" {
  bucket = aws_s3_bucket.static_site.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}


resource "aws_s3_bucket_object" "index" {
  bucket       = "${aws_s3_bucket.static_site.bucket}"
  key          = "index.html"
  source       = "html/index.html"
  content_type = "text/html"
  etag         = "${md5(file("html/index.html"))}"

  depends_on = [
    aws_s3_bucket_ownership_controls.static_site,
    aws_s3_bucket_public_access_block.static_site,
  ]

 
  acl = "public-read"
  
  
}

resource "aws_s3_bucket_object" "error" {
  bucket       = "${aws_s3_bucket.static_site.bucket}"
  key          = "error.html"
  source       = "html/error.html"
  content_type = "text/html"
  etag         = "${md5(file("html/error.html"))}"
  

  depends_on = [
    aws_s3_bucket_ownership_controls.static_site,
    aws_s3_bucket_public_access_block.static_site,
  ]

 
  acl = "public-read"
  
  
} 


resource "aws_s3_bucket_acl" "static_site" {
  depends_on = [
    aws_s3_bucket_ownership_controls.static_site,
    aws_s3_bucket_public_access_block.static_site,
  ]

  bucket = aws_s3_bucket.static_site.id
  
  acl    = "public-read"
}
