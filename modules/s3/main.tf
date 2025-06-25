resource "aws_s3_bucket" "backend-bucket" {
  bucket = "backend-bucket-ce-doorjh"

  tags = {
    Name = "terraform test"
  }
}

resource "aws_s3_bucket_versioning" "backend-bucket-versioning" {
  bucket = aws_s3_bucket.backend-bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}