#!/bin/bash
   #sudo  yum update -y
   #sudo   groupadd docker
   #sudo   useradd John -aG docker 
   #sudo   yum install git unzip wget httpd -y
   #sudo   systemctl start httpd
   #sudo   systemctl enable httpd
   #sudo   cd /opt
   #sudo   wget https://github.com/kserge2001/web-consulting/archive/refs/heads/dev.zip
   #sudo   unzip dev.zip
   #sudo   cp -r /opt/web-consulting-dev/* /var/www/html
     #!/bin/bash

# Update the system
#!/bin/bash
sudo yum update -y
sudo groupadd docker
sudo useradd John -a -G docker
sudo yum install git unzip wget httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
cd /opt
sudo wget https://github.com/kserge2001/web-consulting/archive/refs/heads/dev.zip
sudo unzip dev.zip
sudo cp -r /opt/web-consulting-dev/* /var/www/html
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html
  