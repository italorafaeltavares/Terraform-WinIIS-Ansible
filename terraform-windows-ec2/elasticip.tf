resource "aws_eip" "elasticip" {
    instance = aws_instance.webserver.id  
}

# Exibir o ElasticIP
output "eip" {
  value = aws_eip.elasticip.public_ip
}
