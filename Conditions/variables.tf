variable "image_id" {
    type = string
    default = "ami-002a4813627fb6c96"
    description = "practicing terraform"
}

variable "instance_type" {
    type = string
    default = "t4g.micro"
    
}

variable "instance_name" {
    default = "jay"
} 

variable "tags" {
    default = {
        Name = "jay"
        Course = "Devops"
        Trainner = "Siva"
        Terraform = "true"
    }

}
