#!/bin/bash

echo $address1  address1 >> /etc/hosts
echo $address2  address2 >> /etc/hosts
echo $address3  address3 >> /etc/hosts

sed -i 's/user=$user/user='"$user"'/g' /usr/local/skysql/maxscale/etc/MaxScale.cnf
sed -i 's/passwd=$passwd/passwd='"$passwd"'/g' /usr/local/skysql/maxscale/etc/MaxScale.cnf

service maxscale restart
chkconfig maxscale on

ping 114.114.114.114 >> /dev/null
