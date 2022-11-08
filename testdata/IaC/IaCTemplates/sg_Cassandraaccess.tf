
resource "aws_security_group" "CassandraAccess" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 7000
    to_port     = 7001
    protocol    = "tcp"
  }
}
