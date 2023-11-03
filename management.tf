#####################################
# Create management infrastrucuture #
#####################################

# Configure AWS Provider
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}


####################
# Create Instances #
####################

##### Jenkins  Management Server ##### 
resource "aws_instance" "jenkins_management_server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = [var.default_security_sg]
  key_name                    = var.key_name
  subnet_id                   = var.default_subnet_id
  associate_public_ip_address = "true"

  user_data = file("jnk_management_srv.sh")

  tags = {
    Name : "jenkins_management_server",
    Project : "deploy6",
    az : "${var.region}a"
  }

}

##### Jenkins Agent IaC Server ##### 
resource "aws_instance" "jnk_agent_iac_server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = [var.default_security_sg]
  key_name                    = var.key_name
  subnet_id                   = var.default_subnet_id
  associate_public_ip_address = "true"

  user_data = file("jnk_iac_srv.sh")

  tags = {
    Name : "jnk_agent_iac_server",
    Project : "deploy6",
    az : "${var.region}a"
  }
}

##### Jenkins Agent Container Server ##### 
resource "aws_instance" "jnk_agent_container_server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = [var.default_security_sg]
  key_name                    = var.key_name
  subnet_id                   = var.default_subnet_id
  associate_public_ip_address = "true"

  user_data = file("jnk_container_srv.sh")

  tags = {
    Name : "jnk_agent_container_server",
    Project : "deploy6",
    az : "${var.region}a"
  }
}


###############
# Output Data #
###############

output "jenkins_management_server_public_ip" {
  value = aws_instance.jenkins_management_server.public_ip
}

output "jnk_agent_iac_server_public_ip" {
  value = aws_instance.jnk_agent_iac_server.public_ip
}

output "jnk_agent_container_server_public_ip" {
  value = aws_instance.jnk_agent_container_server.public_ip
}
