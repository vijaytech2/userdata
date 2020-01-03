#!/bin/bash
yum install httpd -y
service httpd start
chkconfig httpd on
cd /var/www/html
echo "Hello, I am Healthy" > healthcheck.html
sudo mkdir docs
sudo mkdir images
cd docs
echo "<html><h1>I am from docs directory</h1></html>" > index.html
curl http://169.254.169.254/latest/meta-data/local-ipv4 >> index.html
cd /var/www/html/images
echo "<html><h1>I am from image directory</h1></html>" > index.html
curl http://169.254.169.254/latest/meta-data/local-ipv4 >> index.html
echo "Welcome to AWS Training from $(hostname -f)" > /var/www/html/index.html
EC2_AVAIL_ZONE=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
echo "<h1>Hello Vijay from $(hostname -f) in AZ $EC2_AVAIL_ZONE</h1>" > /var/www/html/index.html
