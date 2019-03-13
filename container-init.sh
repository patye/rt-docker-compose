#!/usr/bin/env bash

echo "10 sec várakozás, hogy biztosan fusson a mysql"
sleep 10

docker exec rt-mysql mysql -u root -prootpass -e "CREATE USER 'rt_user'@'%' IDENTIFIED BY 'rt_pass';"
docker exec rt-mysql mysql -u root -prootpass -e "grant all privileges on *.* to 'rt_user'@'%'";
docker exec -w /usr/local/src/rt-4.4.3 rt /usr/bin/perl -I/opt/rt4/local/lib -I/opt/rt4/lib sbin/rt-setup-database --action init --dba-password 'rootpass'
docker exec -it rt /opt/rt4/sbin/rt-setup-database --action insert --datafile /opt/initdata/install_initialdata --dba-password 'rootpass'