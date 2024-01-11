#!/bin/bash
sudo yum update
sudo yum install -y httpd
sudo echo "<center><h1> hello from Sample instance 1 </h1><center>" > /var/www/html/index.html
sudo systemctl start httpd