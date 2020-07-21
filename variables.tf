variable "gce_description" {
    default     = "this machine managed by Terraform - do not edit manually" 
}

variable "gce_user_ssh" {
    default     = "aushafy"
}

variable "gce_public_key_ssh" {
    default     = ".ssh/aushafy-publickey"
}

variable "gce_private_key_ssh" {
    default     = ".ssh/aushafy-privatekey.ppk"
}
