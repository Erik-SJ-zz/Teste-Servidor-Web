provider "aws" {
  access_key = "<access_key>"
  secret_key = "<secret_key>"
  region     = "eu-west-1"
}

resource "aws_instance" "web" {
  ami                    = "ami-25488752"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.web.id}"]
  user_data              = "${data.template_file.user_data.rendered}"

  tags {
    Name = "Teste Servidor Web"
  }
}

resource "aws_security_group" "web" {
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "template_file" "user_data" {
  template = "${file("template/user_data.sh.tpl")}"
  vars = {
    name               = "${var.name}"
    description_person = "${var.description_person}"
  }
}
