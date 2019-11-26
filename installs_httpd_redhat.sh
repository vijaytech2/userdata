#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
cd /var/www/html
echo "<html><h1> My web Server </h1></html>" > index.html
curl http://169.254.169.254/latest/meta-data/local-ipv4 >> index.html
