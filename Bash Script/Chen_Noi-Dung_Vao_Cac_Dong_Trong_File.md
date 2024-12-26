#!/bin/bash

#Đường dẫn tới file

FILE_PATH="/etc/nginx/sites-available/test.txt"

#Nội dung cần chèn

CONTENT1="location ~ \.php$ {"

CONTENT2="      include snippets/fastcgi-php.conf;"

CONTENT3="      fastcgi_pass unix:/run/php/php-fpm.sock;"

CONTENT4="}"

#Vị trí dòng

LINE_NUMBER1=5  # Chèn trước dòng 5

LINE_NUMBER2=6  # Chèn trước dòng 6

LINE_NUMBER3=7  # Chèn trước dòng 7

LINE_NUMBER4=8

#Chèn các đoạn nội dung

sed -i "${LINE_NUMBER1}i \       $CONTENT1" "$FILE_PATH"        #sau i co \ la thut dau dong truoc khi chen noi dung.

sed -i "${LINE_NUMBER2}i \               $CONTENT2" "$FILE_PATH"

sed -i "${LINE_NUMBER3}i \              $CONTENT3" "$FILE_PATH"

sed -i "${LINE_NUMBER4}i \       $CONTENT4" "$FILE_PATH"

echo "Đã chèn các đoạn nội dung vào file $FILE_PATH."

