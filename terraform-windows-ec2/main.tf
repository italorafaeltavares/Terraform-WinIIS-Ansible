# Now is EC2
resource "aws_instance" "webserver" {
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.security-group.id]
    key_name = var.key_name
    user_data = file("ansibleuserdata.ps1")
    tags = {
         Name = var.ec2name
 }
}

