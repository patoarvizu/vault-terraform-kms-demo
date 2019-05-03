module "secret_encryption" {
  source = "github.com/patoarvizu/terraform-kms-encryption//modules/secret_encryption?ref=v0.0.1"
  alias_name = "vault-terraform-kms-demo"
  text_to_encrypt = "${var.text_to_encrypt}"
}