# Create a new instance of the amazon linux
resource "aws_instance" "web" {
  count           = "${var.ec2_count}"
  ami_id          = "${var.ami_id}"
  instance_type   = "${var.instance_type}"
  subnet_id       = "${var.subnet_id}"

  tags = {
    Name = "HelloWorld"
  }
  }
