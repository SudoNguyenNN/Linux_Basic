### Những cứ pháp cơ bản với Bash Script

Example auto install nginx

touch install_nginx.sh

chmod 770 install_nginx

vi install_nginx

#!bin/bash

sudo apt install ngix -y

echo -n Password:

read -s Password

#change port connect web nginx

sudo sed -i -e 's/80/8080/g' /etc/nginx/sites-available/default 

echo -n Password:

read -s Password

#restart nginx

sudo systemctl restart nginx.services

