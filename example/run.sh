#!/bin/bash


while IFS="," read -r col1 col2 col3 col4 col5
do
  echo "user: $col1"
  echo "mail: $col2"
  echo "pass: $col3"
  echo "email_part: $col4"
  echo "domain: $col5"
  echo 'domain: "'"$col5"'"  ' 
  echo ""

  
docker run -i myridia/imapsync --tls1 \ 
--host1 foo.com \
--user1 foo@bar.com  \
--password1 mypass \
--tls2 --host2 foo2.com \
--user2 foo@bar.com  \
--password2  mypass



done < mails.csv

