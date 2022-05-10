# resource "aws_lightsail_instance" "lightsnail_test" {
#   for_each = {
#     for key, value in var.lightsnail_config :
#     key => value
#   }
#   name              = each.value.name
#   availability_zone = each.value.availability_zone
#   blueprint_id      = each.value.blueprint_id
#   bundle_id         = each.value.bundle_id

# }