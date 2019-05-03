data "aws_kms_secrets" "service_a" {
  secret {
    name    = "password"
    payload = "AQICAHgFw6/7hGdTCDOUruqw975NSMCS3s0iCelPZaRhPp118gEbJsOEQgjTe4y9cYR6KEnWAAAAfDB6BgkqhkiG9w0BBwagbTBrAgEAMGYGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMhiztDyx2HE20pXP1AgEQgDlyq2SmeeOrlxAl8Sk6QocjWAkbilpbt75ilalCWDnoGjJJSGFoMuxPYyQVjtbMphxsjWQ3aNKEkzU="
  }
  secret {
    name    = "token"
    payload = "AQICAHgFw6/7hGdTCDOUruqw975NSMCS3s0iCelPZaRhPp118gGGNtPGkH9LJwMZRDSyTX4rAAAAizCBiAYJKoZIhvcNAQcGoHsweQIBADB0BgkqhkiG9w0BBwEwHgYJYIZIAWUDBAEuMBEEDFgOeyOGgcdCC8QLGgIBEIBHwFOYshPI/Sk5AmLOiiSIHLqJP70Kxp9VgVbyayh/mXbqOq9kA3j8/KqKK7Dg3SKhbDZcLo5iGzxMrQQWB5cUZyjOVkQ3qTY="
  }
}

resource "vault_generic_secret" "service_a" {
  path      = "secret/service-a"
  data_json = "${jsonencode(data.aws_kms_secrets.service_a.plaintext)}"
}
