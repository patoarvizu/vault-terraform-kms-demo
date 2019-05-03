module "demo_encryption_key" {
  source     = "git@github.com:patoarvizu/terraform-kms-encryption//modules/kms_key?ref=v0.0.1"
  alias_name = "vault-terraform-kms-demo"
}