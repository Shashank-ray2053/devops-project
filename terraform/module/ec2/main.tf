resource "aws_instance" "shashank-ec2-server" {
    ami = var.ami
    instance_type = var.instance_type
    iam_instance_profile = var.skr_iam_instance_profile_name
    key_name = var.key_name
    vpc_security_group_ids = [var.security_group_id]
    subnet_id = var.public_subnet_1
    associate_public_ip_address = true
    

    tags = {
        Name = "shashank-ec2-server"
    }

  
}