# create ec2
resource "aws_instance" "serv1" {
  instance_type = "t2.micro"
  ami = "ami-0195204d5dce06d99" #golden AMI
  key_name = aws_key_pair.key.key_name
  #security_groups = [aws_security_group.sg.name]
  vpc_security_group_ids = [aws_security_group.sg.id]
  subnet_id = aws_subnet.pub1.id
  
  user_data = file("userdata.sh")
  tags = {
    Name: "Utc-dev-inst"
        Team: "Cloud-Transformation"
        Environment: "Dev"
        

  }
}

resource "aws_ebs_volume" "vol1" {
  availability_zone = aws_instance.serv1.availability_zone
  size = 20
  tags= {
    Name = "ebs"
    Team = "Cloud-Transformation"
  }
}

#attach volume 
resource "aws_volume_attachment" "name" {
  device_name = "/dev/sdb"
  volume_id = aws_ebs_volume.vol1.id
  instance_id = aws_instance.serv1.id
}