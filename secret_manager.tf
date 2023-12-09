resource "aws_secretsmanager_secret" "secret-key" {
  name                    = "secret-key"
  recovery_window_in_days = 0
}


resource "aws_secretsmanager_secret_version" "smv" {
  secret_id     = aws_secretsmanager_secret.secret-key.id
  secret_string = tls_private_key.key_genrator.private_key_pem
}