variable "vpc_cidr_block" {
  type = string
}

variable "tags" {
  type = object({
    Environment = string
    Team        = string
  })

  validation {
    condition = contains (["Dev", "Beta", "Prod"], var.tags.Environment)
    error_message = "Environment must be one of: Dev, Beta, Prod"
  }

  validation {
    condition = contains (["QA", "Developer", "DevOps"], var.tags.Team)
    error_message = "Team must be one of: QA, Developer, DevOps"
  }
}