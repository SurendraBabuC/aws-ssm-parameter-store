resource "aws_ssm_parameter" "parameter" {
  name   = "test.test1"
  type   = "String"
  value  = "Hello World"
  type   = "SecureString"
  key_id = "4de4f1a6-10ef-4edb-9e58-e1199f52dd52"
}