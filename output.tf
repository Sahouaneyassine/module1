output "person3" {
  description = "Person list converted"
  value       =  tolist([element(var.person, 0),element(var.person, 2)])
}
