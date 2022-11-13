variable "person" {
  type        = list(string)
  description = "Details of the person (Prenom,Nom,Phone Num) ? "
  validation {
    condition     = length(var.person) == 3
    error_message = "The list must contains 3 elements (Prenom , Non ,Phone Num)"
  }
  validation {
    condition = can(regex("^[0-9]+$",element(var.person, 2)))
    error_message = "THe phone number must contain only numbers. Ex:(06534979)"
  }
}
