resource "aws_s3_bucket" "s3_backend" {
    bucket = var.s3_backend_name
}
resource "aws_s3_bucket_versioning" "s3_versioning_enabled" {
    bucket = aws_s3_bucket.s3_backend.id
    versioning_configuration {
        status = "Enabled"
    }
}
resource "aws_s3_bucket_server_side_encryption_configuration" "sse_encryption" {
    bucket = aws_s3_bucket.s3_backend.id
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = var.sse_encryption_name
        }
    }
}