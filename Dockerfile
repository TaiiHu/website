#Base on the ubutu 14.04 with LAMP

From kalilinux/kali-linux-docker 

#Auth

MAINTAINER TaiiHu 838341345@qq.com

#Command

RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak
ADD ./sources.list /etc/apt/sources.list

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y dist-upgrade
RUN apt-get clean

RUN apt-get -y install net-tools
RUN apt-get -y install vim
RUN apt-get -y install apache2 apache2-utils
RUN apt-get -y install mariadb-server mariadb-client
RUN apt-get -y install php7.0 libapache2-mod-php
RUN apt-get -y install sysv-rc-conf
RUN apt-get -y install git
ADD ./website /root/website
run rm -rf /var/www/html
RUN cp -r /root/website /var/www/html
RUN service apache2 start
RUN service mysql start






#Command when start
EXPOSE 80