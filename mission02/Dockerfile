FROM ubuntu:latest 

RUN apt-get update && apt-get install -y openssh-server
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
		sed -i 's/Port 22/Port 42/g' /etc/ssh/sshd_config && \
		useradd -s "/bin/bash" aduban && \
		mkdir -p /home/aduban/.ssh

COPY ./id_rsa.pub /home/aduban/.ssh/authorized_keys

EXPOSE 42 
CMD		service ssh start & /bin/bash
