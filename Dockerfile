FROM ubuntu:16.04

USER root

WORKDIR /root

#Install basic environment
RUN apt-get -y update && \
    apt-get -y install \
	subversion \ 
        openssh-server \
	supervisor



#Set up SSH access
RUN mkdir /var/run/sshd
RUN sed -i.bak s/PermitRootLogin\ without-password/PermitRootLogin\ yes/g  /etc/ssh/sshd_config
RUN echo "root:<CHANGE_ME>" | chpasswd

EXPOSE 22 

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
