#!/bin/sh

## author = aidna rice
## date 2018-01-11
## script to downlaod met reports and overwrite existing file


URL="http://www.met.ie/latest/reports.asp"
FILE="/var/www/html/tdl-test/auto-sandbox/index.html"

wget -O $FILE $URL

sed -i -e  's/<img src="\/images/<img src="http:\/\/www.met.ie\/images/g' $FILE
