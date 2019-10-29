resource "aws_instance" "test1" {
  ami           = "ami-0cca5d0eeadc8c3c4"
  instance_type = "t2.micro"

  key_name             = "rjackson-east2"
  iam_instance_profile = aws_iam_instance_profile.iam_profile1.name
  security_groups = ["allow_ssh"]
  connection {
     type     = "ssh"
     user     = "ec2-user"
     private_key = file("/Users/rjackson/hashicorp/aws/rjackson-east2.pem")
     host     = "${aws_instance.test1.public_dns}"
    }

  provisioner "remote-exec" {
    inline = [
      "curl -O https://bootstrap.pypa.io/get-pip.py",
      "python get-pip.py --user",
      "export PATH=~/.local/bin:$PATH",
      "source ~/.bash_profile",
      "pip install awscli --upgrade --user"
    ]
  }
}
