output "list_converted" {
  description = "The Person detail list converted : "
  value       =  tolist([element(var.person, 0),element(var.person, 2)])
}
