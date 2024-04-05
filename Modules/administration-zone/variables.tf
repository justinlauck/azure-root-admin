
variable "name" {
  type        = string
  description = "The Name of the Administration Zone"
}

variable "slug" {
  type        = string
  description = "The slug used in naming of repositories, pipelines, and related azure resources"
}

variable "management_group_name" {
  type        = string
  description = "The name of the management group"
}

variable "root_management_group_id" {
  type        = string
  description = "The azure id of the root management group"
}
