resource "aws_secretsmanager_secret" "secretsmanager" {
  name                    = "secret-key"
  recovery_window_in_days = 0
}


resource "aws_secretsmanager_secret_version" "smv" {
  secret_id     = aws_secretsmanager_secret.secretsmanager.id
  secret_string = tls_private_key.key_genrator.private_key_pem
}