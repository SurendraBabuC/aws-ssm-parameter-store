resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name   = var.parameters[count.index].name
  value  = var.parameters[count.index].value
  type   = "String"
  key_id = "4de4f1a6-10ef-4edb-9e58-e1199f52dd52"
}