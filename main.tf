provider "aws" {
  region = "eu-central-1"
}

# --------------------------
# S3 Bucket for Website
# --------------------------
resource "aws_s3_bucket" "denzilCV" {
  bucket = "denzil-peiris-cv-2025" # change to a unique name
}

# Block public access (best practice, we'll use OAC instead)
resource "aws_s3_bucket_public_access_block" "website" {
  bucket = aws_s3_bucket.denzilCV.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Upload index.html & error.html (optional)
resource "aws_s3_object" "denzilCV" {
  bucket       = aws_s3_bucket.denzilCV.id
  key          = "denzilCV.html"
  source       = "denzilCV.html"
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  bucket       = aws_s3_bucket.denzilCV.id
  key          = "error.html"
  source       = "error.html"
  content_type = "text/html"
}

# --------------------------
# CloudFront Origin Access Control (OAC)
# --------------------------
resource "aws_cloudfront_origin_access_control" "oac" {
  name                              = "s3-oac"
  description                       = "OAC for S3 Website"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

# --------------------------
# CloudFront Distribution
# --------------------------
resource "aws_cloudfront_distribution" "cdn" {
  enabled             = true
  default_root_object = "denzilCV.html"

  origin {
    domain_name = aws_s3_bucket.denzilCV.bucket_regional_domain_name
    origin_id   = "s3-origin"

    origin_access_control_id = aws_cloudfront_origin_access_control.oac.id
  }

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "s3-origin"

    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  price_class = "PriceClass_100" # Use "PriceClass_All" for global

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true # Use ACM for custom domain + HTTPS
  }

  custom_error_response {
    error_code            = 404
    response_code         = 200
    response_page_path    = "/error.html"
    error_caching_min_ttl = 300
  }
}

# --------------------------
# S3 Bucket Policy for CloudFront OAC
# --------------------------
data "aws_iam_policy_document" "s3_policy" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.denzilCV.arn}/*"]

    principals {
      type        = "Service"
      identifiers = ["cloudfront.amazonaws.com"]
    }

    condition {
      test     = "StringEquals"
      variable = "AWS:SourceArn"
      values   = [aws_cloudfront_distribution.cdn.arn]
    }
  }
}

resource "aws_s3_bucket_policy" "website_policy" {
  bucket = aws_s3_bucket.denzilCV.id
  policy = data.aws_iam_policy_document.s3_policy.json
}
