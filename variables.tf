variable "person" {
  type        = list(string)
  description = "Details of the person (Prenom,Nom,Num) ? "
  validation {
    condition     = length(var.person) == 3
    error_message = "The list must contains 3 elements (Prenom , Non , Num)"
  }
  validation {
    error_message = "Value Must  contain only numbers."
    condition =  can( regex("^\d+$",element(var.person, 2)) )
  }
}
