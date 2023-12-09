
# genrate key pair
resource "tls_private_key" "key_genrator" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


# save public key
resource "aws_key_pair" "tf-public-key" {
  key_name   = "tf_key"
  public_key = tls_private_key.key_genrator.public_key_openssh
}


# save private key in local (in project dir)

resource "local_file" "tf-private-key" {
content  = tls_private_key.key_genrator.private_key_pem
filename = "tf_key.pem"
}