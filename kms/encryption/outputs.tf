output "encrypted_text" {
  value = "${module.secret_encryption.encrypted_secret}"
}