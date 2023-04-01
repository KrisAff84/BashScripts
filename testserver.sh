#!/bin/bash 

#*********** To test a webserver and print an HTML page ******************

sudo yum update #updates all packages
 
sudo yum -y install httpd #install apache

sudo systemctl start httpd #start apache

sudo systemctl enable httpd #enable apache on server startup

sudo firewall-cmd --permanent --zone=public --add-service=http #add http to firewall 

sudo firewall-cmd --permanent --zone=public --add-service=https #add https to firewall

sudo firewall-cmd --reload #reload firewall to apply the permanent changes

# ******* Creates HTML Page ****** 

echo '<html>' | sudo tee /var/www/html/index.html
echo '<body>' | sudo tee -a  /var/www/html/index.html
echo '<h1>Welcome to LUIT - Blue Team!</h1>' | sudo tee -a /var/www/html/index.html
echo '</body>' | sudo tee -a  /var/www/html/index.html
echo '</html>' | sudo tee -a  /var/www/html/index.html

ip=$(curl -4 icanhazip.com)           #Assigns public IP address to variable $ip
echo
echo
echo Complete! Paste your public IPv4 address into a browser to see your test page. 
echo
echo Your public IPv4 address is: $ip            #displays IP address
echo 
echo
