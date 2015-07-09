FROM jenkins:latest

USER root
RUN apt-get update && apt-get install -y build-essential chrpath libssl-dev libxft-dev libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev wget
RUN cd /tmp && curl -OL https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2 && tar xvjf phantomjs-1.9.8-linux-x86_64.tar.bz2 && mv phantomjs-1.9.8-linux-x86_64 /usr/local/share && ln -s /usr/local/share/phantomjs-1.9.8-linux-x86_64 /usr/local/bin

USER jenkins
RUN echo git 2.3.5 >> /tmp/plugins.txt
RUN echo git-client 1.17.1 >> /tmp/plugins.txt
RUN echo scm-api 0.2 >> /tmp/plugins.txt
RUN echo greenballs 1.14 >> /tmp/plugins.txt
RUN echo build-monitor-plugin 1.6+build.142 >> /tmp/plugins.txt
RUN echo junit 1.6 >> /tmp/plugins.txt
RUN echo gradle 1.24 >> /tmp/plugins.txt
RUN echo ansicolor 0.4.1 >> /tmp/plugins.txt
RUN /usr/local/bin/plugins.sh /tmp/plugins.txt
