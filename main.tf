module "root_s3_backend" {
    source = "./modules/s3_backend"
    s3_backend_name = var.root_s3_backend_name
    sse_encryption_name = var.root_sse_encryption
}
module "root_dynamodb" {
    source = "./modules/dynamodb"
    dynamodb_name = var.root_dynamodb_name
    hash_key_name = var.root_hash_key_name
}