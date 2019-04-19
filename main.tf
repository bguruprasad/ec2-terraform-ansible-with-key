provider "aws" {
  region = "eu-west-1"
}

resource "aws_key_pair" "auth" {
  key_name = "customkey"
  public_key = "${file(var.keypath)}"
}

resource "aws_instance" "myinstance" {
  instance_type = "${var.instance_type}"
  ami = "${var.ami}"

  tags {
    Name = "myinstance"
  }

  key_name = "${aws_key_pair.auth.key_name}"
  provisioner "local-exec" {
      command = "aws ec2 wait instance-status-ok --instance-ids ${aws_instance.myinstance.id} && ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ec2-user -i ${aws_instance.myinstance.public_ip}, --private-key customkeytest test.yml"
    }
  }
