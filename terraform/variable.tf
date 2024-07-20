variable "project_name" {
    default = "expense"  
}

variable "environment" {
    default = "dev"  
}

variable "common_tags" {
    type = map 
    default = {
        Project     = "expense"
        Environment = "dev"
        Terraform   = "true"
        Component   = "backend"
    }
}

variable "zone_name" {
    default = "devopslearning2025.online"
}

#created this part of Jenkins CICD
variable "app_Version" {
    
}