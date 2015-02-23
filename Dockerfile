FROM csanchez/jenkins-swarm-slave

USER root

RUN wget http://mirrors.rackhosting.com/apache//ant/binaries/apache-ant-1.9.4-bin.tar.gz
RUN tar -xvzf apache-ant-1.9.4-bin.tar.gz
RUN mv apache-ant-1.9.4 /usr/local/apache-ant

RUN wget http://mirrors.rackhosting.com/apache//ant/ivy/2.4.0/apache-ivy-2.4.0-bin.tar.gz
RUN tar -xvzf apache-ivy-2.4.0-bin.tar.gz
RUN mv apache-ivy-2.4.0/ivy-2.4.0.jar /usr/local/apache-ant/lib

ENV ANT_HOME /usr/local/apache-ant
ENV PATH $PATH:$ANT_HOME/bin

USER jenkins-slave

