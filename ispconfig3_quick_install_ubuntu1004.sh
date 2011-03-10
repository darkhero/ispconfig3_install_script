#!/bin/bash
# 請先安裝好你的 ubuntu 10.04
apt-get update

apt-get upgrade

apt-get install postfix postfix-mysql postfix-doc mysql-client mysql-server courier-authdaemon courier-authlib-mysql courier-pop courier-pop-ssl courier-imap courier-imap-ssl libsasl2-2 libsasl2-modules libsasl2-modules-sql sasl2-bin libpam-mysql openssl maildrop getmail4 binutils amavisd-new spamassassin zoo unzip bzip2 arj nomarch lzop cabextract apt-listchanges libnet-ldap-perl libauthen-sasl-perl clamav-docs daemon libio-string-perl libio-socket-ssl-perl libnet-ident-perl zip libnet-dns-perl apache2 apache2.2-common apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert libapache2-mod-php5 php5 php5-common php5-gd php5-mysql php5-imap phpmyadmin php5-cli php5-cgi libapache2-mod-fcgid apache2-suexec php-pear php-auth php5-mcrypt mcrypt php5-imagick imagemagick libapache2-mod-suphp php-apc pure-ftpd-common pure-ftpd-mysql vlogger webalizer fail2ban build-essential libmysqlclient-dev

a2enmod suexec rewrite ssl actions include

cd /tmp
wget http://downloads.sourceforge.net/project/mydns-ng/mydns/1.2.8.31/mydns-1.2.8.31.tar.gz
tar xvfz mydns-1.2.8.31.tar.gz
cd mydns-1.2.8.31
./configure
make
make install

cd /tmp
wget http://downloads.sourceforge.net/project/ispconfig/ISPConfig%203/ISPConfig-3.0.3.2/ISPConfig-3.0.3.2.tar.gz
tar -xvf ISPConfig-3.0.3.2.tar.gz
cd ispconfig3_install
cd install
php -q install.php

# 理論上, 上面這些跑完, 跳出來的設定都設定起來.就可以在 http://localhost:8080/ 看到 ispconfig 的管理介面了.
# 請用 admin admin 登入