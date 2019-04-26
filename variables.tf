variable "keypath" {
	description = "SSH Public key path to be used"
}
variable "ami" {
	description = "AWS AMI to be used for spinning up the instance"
}
variable "instance_type" {
	default = "t2.micro"
	description = "EC2 Instance type"
}
