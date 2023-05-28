resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name   = var.parameters[count.index].name
  value  = var.parameters[count.index].value
  type   = "String"
  key_id = "4de4f1a6-10ef-4edb-9e58-e1199f52dd52"
}

## Passwords are not at all meant to keep in inside the code at all, Here it is a lab we are doing to save the time
## One of the scenario that mostly used in real way is, Enter the passwords in parameter store by someone for passwords.
resource "aws_ssm_parameter" "passwords" {
  count = length(var.passwords)
  name   = var.passwords[count.index].name
  value  = var.passwords[count.index].value
  type   = "SecureString"
  key_id = "4de4f1a6-10ef-4edb-9e58-e1199f52dd52"
}