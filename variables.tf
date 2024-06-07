variable "root_s3_backend_name" {
    type = string
    default = "my-remote-s3-from-tf-6362117782"
}
variable "root_sse_encryption" {
    type = string
    default = "AES256"
}
variable "root_dynamodb_name" {
    type = string
    default = "dynamodb-backend-locking"
}
variable "root_hash_key_name" {
    type = string
    default = "LockID"
}